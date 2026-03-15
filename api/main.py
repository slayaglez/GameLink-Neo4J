"""
GameLink API · FastAPI + Neo4j
-------------------------------
Endpoints disponibles:
  GET  /                                → estado de la API
  GET  /stats                           → resumen del grafo
  GET  /usuarios                        → listar todos los usuarios
  GET  /usuarios/{name}/amigos          → amigos de un usuario
  GET  /usuarios/{name}/juegos          → juegos jugados por un usuario
  GET  /usuarios/{name}/quiere_jugar    → wishlist de un usuario
  POST /amistad                         → crear relación FRIEND_OF
  POST /bloquear                        → crear relación BLOCKED
  GET  /juegos                          → listar todos los juegos
  GET  /juegos/{title}/plataformas      → plataformas donde está disponible
  GET  /juegos/{title}/generos          → géneros del juego
  GET  /desarrolladores                 → listar desarrolladores
  GET  /plataformas                     → listar plataformas
  GET  /generos                         → listar géneros
  GET  /recomendaciones/{name}          → juegos que juegan amigos pero no el usuario
"""

from fastapi import FastAPI, HTTPException
from api.db import get_driver
from api.models import RegistrarPartida, RelacionUsuario

app = FastAPI(
    title="GameLink API",
    description="Red social de videojuegos · Neo4j + FastAPI",
    version="2.0.0",
)


# ─── Utilidad interna ────────────────────────────────────────────────────────

def run_query(query: str, params: dict = {}):
    with get_driver() as driver:
        with driver.session() as session:
            result = session.run(query, params)
            return [record.data() for record in result]


# ─── Estado ──────────────────────────────────────────────────────────────────

@app.get("/", tags=["Estado"])
def root():
    return {"estado": "online", "proyecto": "GameLink", "tecnologia": "Neo4j + FastAPI"}


@app.get("/stats", tags=["Estado"])
def estadisticas():
    """Resumen completo del grafo."""
    nodos = run_query("MATCH (n) RETURN count(n) AS total")
    rels  = run_query("MATCH ()-[r]->() RETURN count(r) AS total")
    usuarios     = run_query("MATCH (u:User) RETURN count(u) AS total")
    juegos       = run_query("MATCH (g:Game) RETURN count(g) AS total")
    desarrolladores = run_query("MATCH (d:Developer) RETURN count(d) AS total")
    plataformas  = run_query("MATCH (p:Platform) RETURN count(p) AS total")
    generos      = run_query("MATCH (g:Genre) RETURN count(g) AS total")
    return {
        "total_nodos":       nodos[0]["total"],
        "total_relaciones":  rels[0]["total"],
        "usuarios":          usuarios[0]["total"],
        "juegos":            juegos[0]["total"],
        "desarrolladores":   desarrolladores[0]["total"],
        "plataformas":       plataformas[0]["total"],
        "generos":           generos[0]["total"],
    }


# ─── Usuarios ────────────────────────────────────────────────────────────────

@app.get("/usuarios", tags=["Usuarios"])
def listar_usuarios():
    return run_query(
        "MATCH (u:User) RETURN u.id AS id, u.name AS name, u.country AS country, u.signupDate AS signupDate ORDER BY u.name"
    )


@app.get("/usuarios/{name}/amigos", tags=["Usuarios"])
def amigos_de(name: str):
    return run_query(
        """
        MATCH (u:User {name: $name})-[:FRIEND_OF]->(amigo:User)
        RETURN amigo.name AS name, amigo.country AS country
        ORDER BY amigo.name
        """,
        {"name": name},
    )


@app.get("/usuarios/{name}/juegos", tags=["Usuarios"])
def juegos_de(name: str):
    return run_query(
        """
        MATCH (u:User {name: $name})-[:PLAYED]->(g:Game)
        RETURN g.title AS title, g.year AS year
        ORDER BY g.year DESC
        """,
        {"name": name},
    )


@app.get("/usuarios/{name}/quiere_jugar", tags=["Usuarios"])
def wishlist_de(name: str):
    return run_query(
        """
        MATCH (u:User {name: $name})-[:WANTS_TO_PLAY]->(g:Game)
        RETURN g.title AS title, g.year AS year
        ORDER BY g.title
        """,
        {"name": name},
    )


# ─── Relaciones sociales ──────────────────────────────────────────────────────

@app.post("/amistad", tags=["Relaciones"])
def hacer_amigos(rel: RelacionUsuario):
    run_query(
        """
        MATCH (a:User {name: $origen}), (b:User {name: $destino})
        MERGE (a)-[:FRIEND_OF]->(b)
        """,
        {"origen": rel.usuario_origen, "destino": rel.usuario_destino},
    )
    return {"mensaje": f"'{rel.usuario_origen}' y '{rel.usuario_destino}' ahora son amigos"}


@app.post("/bloquear", tags=["Relaciones"])
def bloquear(rel: RelacionUsuario):
    run_query(
        """
        MATCH (a:User {name: $origen}), (b:User {name: $destino})
        MERGE (a)-[:BLOCKED]->(b)
        """,
        {"origen": rel.usuario_origen, "destino": rel.usuario_destino},
    )
    return {"mensaje": f"'{rel.usuario_origen}' ha bloqueado a '{rel.usuario_destino}'"}


# ─── Juegos ───────────────────────────────────────────────────────────────────

@app.get("/juegos", tags=["Juegos"])
def listar_juegos():
    return run_query(
        "MATCH (g:Game) RETURN g.id AS id, g.title AS title, g.year AS year ORDER BY g.year DESC"
    )


@app.get("/juegos/{title}/plataformas", tags=["Juegos"])
def plataformas_de(title: str):
    return run_query(
        """
        MATCH (g:Game {title: $title})-[:AVAILABLE_ON]->(p:Platform)
        RETURN p.name AS platform
        ORDER BY p.name
        """,
        {"title": title},
    )


@app.get("/juegos/{title}/generos", tags=["Juegos"])
def generos_de(title: str):
    return run_query(
        """
        MATCH (g:Game {title: $title})-[:HAS_GENRE]->(genre:Genre)
        RETURN genre.name AS genre
        ORDER BY genre.name
        """,
        {"title": title},
    )


@app.get("/juegos/{title}/desarrollador", tags=["Juegos"])
def desarrollador_de(title: str):
    return run_query(
        """
        MATCH (g:Game {title: $title})-[:DEVELOPED_BY]->(d:Developer)
        RETURN d.name AS name, d.country AS country
        """,
        {"title": title},
    )


# ─── Catálogo ────────────────────────────────────────────────────────────────

@app.get("/desarrolladores", tags=["Catálogo"])
def listar_desarrolladores():
    return run_query(
        "MATCH (d:Developer) RETURN d.name AS name, d.country AS country ORDER BY d.name"
    )


@app.get("/plataformas", tags=["Catálogo"])
def listar_plataformas():
    return run_query("MATCH (p:Platform) RETURN p.name AS name ORDER BY p.name")


@app.get("/generos", tags=["Catálogo"])
def listar_generos():
    return run_query("MATCH (g:Genre) RETURN g.name AS name ORDER BY g.name")


# ─── Recomendaciones ─────────────────────────────────────────────────────────

@app.get("/recomendaciones/{name}", tags=["Recomendaciones"])
def recomendar_juegos(name: str):
    """
    Juegos que han jugado los amigos de {name} pero que él aún no ha jugado.
    Consulta clásica de grafo: dos saltos de relación.
    """
    return run_query(
        """
        MATCH (yo:User {name: $name})-[:FRIEND_OF]->(amigo)-[:PLAYED]->(g:Game)
        WHERE NOT (yo)-[:PLAYED]->(g)
        RETURN DISTINCT g.title AS title, g.year AS year,
               count(amigo) AS amigos_que_lo_jugaron
        ORDER BY amigos_que_lo_jugaron DESC
        """,
        {"name": name},
    )


@app.get("/recomendaciones/{name}/wishlist_amigos", tags=["Recomendaciones"])
def wishlist_amigos(name: str):
    """
    Juegos que los amigos de {name} quieren jugar — útil para organizar partidas grupales.
    """
    return run_query(
        """
        MATCH (yo:User {name: $name})-[:FRIEND_OF]->(amigo)-[:WANTS_TO_PLAY]->(g:Game)
        WHERE NOT (yo)-[:PLAYED]->(g)
        RETURN DISTINCT g.title AS title, g.year AS year,
               count(amigo) AS amigos_interesados
        ORDER BY amigos_interesados DESC
        """,
        {"name": name},
    )
