"""
GameLink · Script de demostración
----------------------------------
Conecta directamente a Neo4j por Bolt y ejecuta
consultas representativas del grafo de la red social.

Uso:
    python script.py
"""

from api.db import get_driver, verify_connection


def seccion(titulo: str):
    print(f"\n{'─'*55}")
    print(f"  {titulo}")
    print(f"{'─'*55}")


def main():
    print("\n🎮  GameLink · Demo de consultas Neo4j\n")
    verify_connection()
    print("✅  Conexión establecida con Neo4j\n")

    with get_driver() as driver:
        with driver.session() as s:

            # ── 1. Resumen del grafo ─────────────────────────────
            seccion("1. Resumen del grafo")
            nodos    = s.run("MATCH (n) RETURN count(n) AS total").single()["total"]
            rels     = s.run("MATCH ()-[r]->() RETURN count(r) AS total").single()["total"]
            usuarios = s.run("MATCH (u:User) RETURN count(u) AS total").single()["total"]
            juegos   = s.run("MATCH (g:Game) RETURN count(g) AS total").single()["total"]
            devs     = s.run("MATCH (d:Developer) RETURN count(d) AS total").single()["total"]
            print(f"  Nodos totales      : {nodos}")
            print(f"  Relaciones totales : {rels}")
            print(f"  Usuarios           : {usuarios}")
            print(f"  Juegos             : {juegos}")
            print(f"  Desarrolladores    : {devs}")

            # ── 2. Usuarios más conectados ───────────────────────
            seccion("2. Top 5 usuarios con más amigos")
            resultado = s.run("""
                MATCH (u:User)-[:FRIEND_OF]->(amigo)
                RETURN u.name AS usuario, count(amigo) AS amigos
                ORDER BY amigos DESC LIMIT 5
            """)
            for r in resultado:
                print(f"  {r['usuario']:<25} → {r['amigos']} amigos")

            # ── 3. Juegos más jugados ────────────────────────────
            seccion("3. Top 5 juegos más jugados")
            resultado = s.run("""
                MATCH (u:User)-[:PLAYED]->(g:Game)
                RETURN g.title AS juego, count(u) AS jugadores
                ORDER BY jugadores DESC LIMIT 5
            """)
            for r in resultado:
                print(f"  {r['juego']:<30} → {r['jugadores']} jugadores")

            # ── 4. Juegos más deseados (wishlist) ────────────────
            seccion("4. Top 5 juegos más deseados")
            resultado = s.run("""
                MATCH (u:User)-[:WANTS_TO_PLAY]->(g:Game)
                RETURN g.title AS juego, count(u) AS interesados
                ORDER BY interesados DESC LIMIT 5
            """)
            for r in resultado:
                print(f"  {r['juego']:<30} → {r['interesados']} usuarios lo desean")

            # ── 5. Recomendaciones personalizadas ────────────────
            seccion("5. Recomendaciones (juegos de amigos no jugados)")
            primer_usuario = s.run(
                "MATCH (u:User)-[:FRIEND_OF]->() RETURN u.name AS name LIMIT 1"
            ).single()

            if primer_usuario:
                name = primer_usuario["name"]
                resultado = s.run("""
                    MATCH (yo:User {name: $name})-[:FRIEND_OF]->(amigo)-[:PLAYED]->(g:Game)
                    WHERE NOT (yo)-[:PLAYED]->(g)
                    RETURN DISTINCT g.title AS titulo, count(amigo) AS popularidad
                    ORDER BY popularidad DESC LIMIT 5
                """, name=name)
                recomendaciones = list(resultado)
                if recomendaciones:
                    print(f"  Para '{name}':")
                    for r in recomendaciones:
                        print(f"    · {r['titulo']} (jugado por {r['popularidad']} amigos)")
                else:
                    print(f"  '{name}' ya ha jugado todo lo que juegan sus amigos")

            # ── 6. Usuarios bloqueados mutuamente ────────────────
            seccion("6. Detección de bloqueos mutuos")
            resultado = s.run("""
                MATCH (a:User)-[:BLOCKED]->(b:User)-[:BLOCKED]->(a)
                RETURN a.name AS usuario_a, b.name AS usuario_b
            """)
            bloqueos = list(resultado)
            if bloqueos:
                for r in bloqueos:
                    print(f"  ⚔️  {r['usuario_a']} ↔ {r['usuario_b']}")
            else:
                print("  No hay bloqueos mutuos en el grafo")

            # ── 7. Camino más corto entre dos usuarios ───────────
            seccion("7. Camino más corto entre dos usuarios (shortestPath)")
            usuarios_lista = s.run(
                "MATCH (u:User)-[:FRIEND_OF]->() WITH DISTINCT u.name AS name RETURN name LIMIT 2"
            ).values("name")
            if len(usuarios_lista) >= 2:
                u1, u2 = usuarios_lista[0][0], usuarios_lista[1][0]
                resultado = s.run("""
                    MATCH p = shortestPath(
                        (a:User {name: $u1})-[:FRIEND_OF*]-(b:User {name: $u2})
                    )
                    RETURN [n IN nodes(p) | n.name] AS camino, length(p) AS saltos
                """, u1=u1, u2=u2).single()
                if resultado:
                    print(f"  De '{u1}' a '{u2}':")
                    print(f"  {' → '.join(resultado['camino'])}  ({resultado['saltos']} saltos)")
                else:
                    print(f"  No hay camino entre '{u1}' y '{u2}'")

            # ── 8. Géneros con más juegos ────────────────────────
            seccion("8. Géneros con más juegos")
            resultado = s.run("""
                MATCH (g:Game)-[:HAS_GENRE]->(genre:Genre)
                RETURN genre.name AS genero, count(g) AS juegos
                ORDER BY juegos DESC LIMIT 5
            """)
            for r in resultado:
                print(f"  {r['genero']:<20} → {r['juegos']} juegos")

    print(f"\n{'─'*55}")
    print("  Demo completada ✅")
    print(f"{'─'*55}\n")


if __name__ == "__main__":
    main()
