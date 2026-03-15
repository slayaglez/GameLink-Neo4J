# 🎮 GameLink — Red Social de Videojuegos

> **Base de datos orientada a grafos con Neo4j · Proyecto académico · DAM/DAW**

![Neo4j](https://img.shields.io/badge/Neo4j-5.18-008CC1?style=flat-square&logo=neo4j&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=flat-square&logo=python&logoColor=white)
![License](https://img.shields.io/badge/licencia-académica-green?style=flat-square)

---

## 📖 Descripción del proyecto

GameLink es una red social de videojuegos modelada como un **grafo de conocimiento** en Neo4j. El proyecto demuestra cómo una base de datos orientada a grafos resuelve de forma natural problemas de conectividad social que serían costosos o complejos de implementar en bases de datos relacionales tradicionales.

El grafo modela una comunidad de jugadores que pueden hacerse amigos, bloquearse, registrar los juegos que han jugado, y descubrir nuevos títulos a través de su red de contactos.

---

## 🏗️ Arquitectura del sistema

```
┌─────────────────────────────────────────────────────────┐
│                    CAPA DE PRESENTACIÓN                 │
│                                                         │
│   Neo4j Browser (localhost:7474)  ←→  FastAPI /docs     │
└──────────────────────┬──────────────────────────────────┘
                       │
┌──────────────────────▼──────────────────────────────────┐
│                    CAPA DE APLICACIÓN                   │
│                                                         │
│   api/main.py (FastAPI)    script.py (demo Bolt)        │
│   api/db.py (conexión)     api/models.py (Pydantic)     │
└──────────────────────┬──────────────────────────────────┘
                       │  Bolt (puerto 7687)
┌──────────────────────▼──────────────────────────────────┐
│                    CAPA DE DATOS                        │
│                                                         │
│   Neo4j 5.18 Community + APOC                           │
│   Docker Container: neo4j-gamelink                      │
│   Persistencia: ./data  │  Logs: ./logs                 │
└─────────────────────────────────────────────────────────┘
```

---

## 🗺️ Modelo de datos

### Nodos

| Etiqueta | Propiedades | Descripción |
|---|---|---|
| `User` | `id`, `name`, `country`, `signupDate` | Usuarios de la plataforma |
| `Game` | `id`, `title`, `year` | Videojuegos del catálogo |
| `Developer` | `name`, `country` | Estudios desarrolladores |
| `Platform` | `name` | Plataformas y servicios |
| `Genre` | `name` | Géneros de videojuegos |
| `Engine` | `name` | Motores gráficos |

### Relaciones

| Relación | Origen → Destino | Propiedades |
|---|---|---|
| `FRIEND_OF` | User → User | — |
| `BLOCKED` | User → User | — |
| `PLAYED` | User → Game | `hours`, `rating`, `lastPlayed`, `review` |
| `WANTS_TO_PLAY` | User → Game | — |
| `SUBSCRIBED_TO` | User → Platform | — |
| `DEVELOPED_BY` | Game → Developer | — |
| `HAS_GENRE` | Game → Genre | — |
| `AVAILABLE_ON` | Game → Platform | — |
| `INCLUDED_IN` | Game → Platform | — |
| `RUNS_ON` | Game → Engine | — |

### Estadísticas del grafo

```
Nodos totales      : 168
Relaciones totales : 624
Usuarios           : 48
Juegos             : 55
Desarrolladores    : 23
Plataformas        : 19
Géneros            : 17
Motores            : 6
```

---

## 🚀 Puesta en marcha

### Requisitos previos

- [Docker](https://docs.docker.com/get-docker/) instalado y funcionando
- Python 3.10+ (solo para la versión con API)
- Git

### Instalación completa

```bash
# 1. Clonar el repositorio
git clone https://github.com/slayaglez/GameLink-Neo4J.git
cd GameLink-Neo4J

# 2. Configurar variables de entorno
cp .env.example .env

# 3. Crear carpetas de persistencia
mkdir -p data logs plugins

# 4. Levantar Neo4j en Docker
docker compose up -d

# 5. Verificar que está healthy
docker ps

# 6. Cargar los datos
docker exec -it neo4j-gamelink cypher-shell \
  -u neo4j -p gamelink1234 \
  --file /var/lib/neo4j/import/datos.cypher
```

Abre **http://localhost:7474** en el navegador.
Credenciales: `neo4j` / `gamelink1234`

---

## 🐳 Docker — Referencia de comandos

| Acción | Comando |
|---|---|
| Levantar contenedor | `docker compose up -d` |
| Parar contenedor | `docker compose down` |
| Ver estado y salud | `docker ps` |
| Ver logs en vivo | `docker logs -f neo4j-gamelink` |
| Entrar al contenedor | `docker exec -it neo4j-gamelink bash` |
| Ejecutar Cypher directo | `docker exec -it neo4j-gamelink cypher-shell -u neo4j -p gamelink1234` |
| Reimportar datos | `docker exec -it neo4j-gamelink cypher-shell -u neo4j -p gamelink1234 --file /var/lib/neo4j/import/datos.cypher` |

---

## 🔍 Consultas Cypher de referencia

### Exploración básica

```cypher
-- Resumen del grafo
MATCH (n) RETURN labels(n) AS tipo, count(n) AS cantidad
ORDER BY cantidad DESC

-- Ver todas las relaciones disponibles
MATCH ()-[r]->()
RETURN type(r) AS relacion, count(r) AS cantidad
ORDER BY cantidad DESC
```

### Consultas sociales

```cypher
-- Amigos de un usuario
MATCH (u:User {name: "Ana Muller"})-[:FRIEND_OF]->(amigo)
RETURN amigo.name AS amigo, amigo.country AS pais

-- Usuarios con bloqueos mutuos
MATCH (a:User)-[:BLOCKED]->(b:User)-[:BLOCKED]->(a)
RETURN a.name AS usuario_a, b.name AS usuario_b

-- Camino más corto entre dos usuarios
MATCH p = shortestPath(
  (a:User {name: "Ana Muller"})-[:FRIEND_OF*]-(b:User {name: "Hiroshi"})
)
RETURN [n IN nodes(p) | n.name] AS camino, length(p) AS saltos
```

### Consultas de juegos

```cypher
-- Top 5 juegos más jugados
MATCH (u:User)-[:PLAYED]->(g:Game)
RETURN g.title AS juego, count(u) AS jugadores
ORDER BY jugadores DESC LIMIT 5

-- Juegos recomendados por amistad
MATCH (yo:User {name: "Ana Muller"})-[:FRIEND_OF]->(amigo)-[:PLAYED]->(g:Game)
WHERE NOT (yo)-[:PLAYED]->(g)
RETURN DISTINCT g.title AS titulo, count(amigo) AS amigos_que_lo_jugaron
ORDER BY amigos_que_lo_jugaron DESC

-- Juegos por género
MATCH (g:Game)-[:HAS_GENRE]->(genre:Genre)
RETURN genre.name AS genero, count(g) AS juegos
ORDER BY juegos DESC
```

### Consultas avanzadas

```cypher
-- Usuarios más conectados (top influencers)
MATCH (u:User)-[:FRIEND_OF]->(amigo)
RETURN u.name AS usuario, count(amigo) AS amigos
ORDER BY amigos DESC LIMIT 5

-- Juegos disponibles en Game Pass con su desarrollador
MATCH (g:Game)-[:INCLUDED_IN]->(p:Platform {name: "Xbox Game Pass"})
MATCH (g)-[:DEVELOPED_BY]->(d:Developer)
RETURN g.title AS juego, d.name AS desarrollador

-- Usuarios que quieren jugar algo que sus amigos ya jugaron
MATCH (yo:User)-[:WANTS_TO_PLAY]->(g:Game)
MATCH (yo)-[:FRIEND_OF]->(amigo)-[:PLAYED]->(g)
RETURN yo.name AS usuario, g.title AS juego,
       collect(amigo.name) AS amigos_que_lo_jugaron
```

---

## 🐍 API REST (FastAPI) (Aún en construcción)

### Instalación


### Levantar la API


### Endpoints disponibles


### Script de demostración

```bash
python script.py
```

Ejecuta 8 consultas representativas directamente por el protocolo Bolt:
resumen del grafo, usuarios más conectados, juegos más jugados, wishlist,
recomendaciones personalizadas, bloqueos mutuos, camino más corto y géneros.

---

## 📁 Estructura del proyecto

```
GameLink-Neo4J/
│
├──  docker-compose.yml      # Orquestación del contenedor Neo4j
├──  .env.example            # Plantilla de variables de entorno
├──  .gitignore              # Exclusiones de Git
├──  README.md               # Este fichero
│
├──  import/
│   └── datos.cypher           # Script de recreación del grafo completo
│
├──  script.py               # Demo de consultas directas por Bolt
│
└──  api/
    ├── __init__.py
    ├── db.py                  # Módulo de conexión a Neo4j
    ├── main.py                # Endpoints FastAPI
    ├── models.py              # Modelos Pydantic
    └── requirements.txt       # Dependencias Python
```

> **Nota:** Las carpetas `data/`, `logs/` y `plugins/` son generadas
> automáticamente por Neo4j al arrancar el contenedor y están excluidas
> del repositorio por `.gitignore`.

---

## ⚙️ Variables de entorno

| Variable | Valor por defecto | Descripción |
|---|---|---|
| `NEO4J_USER` | `neo4j` | Usuario de Neo4j |
| `NEO4J_PASSWORD` | `gamelink1234` | Contraseña de Neo4j |
| `NEO4J_HTTP_PORT` | `7474` | Puerto del navegador web |
| `NEO4J_BOLT_PORT` | `7687` | Puerto del protocolo Bolt |
| `NEO4J_URI` | `bolt://localhost:7687` | URI de conexión |
| `API_HOST` | `0.0.0.0` | Host de la API |
| `API_PORT` | `8000` | Puerto de la API |

---

## 🗂️ Ramas del repositorio

| Rama | Descripción |
|---|---|
| `main` | Versión académica — Neo4j + Docker + Cypher |
| `fullstack` | Versión extendida — API REST + despliegue en Railway/Vercel (Próximamente)|

---

## 📐 Decisiones de diseño

**¿Por qué Neo4j y no una base de datos relacional?**

Las consultas de redes sociales como *"recomiéndame juegos que juegan mis amigos pero yo no he jugado"* o *"¿cuál es el camino más corto entre dos usuarios?"* requieren múltiples JOINs recursivos en SQL. En Neo4j se resuelven con una sola línea de Cypher traversando el grafo de forma natural, con un rendimiento que escala mejor a medida que crece la red.

**¿Por qué Docker?**

Docker garantiza que el entorno es idéntico en cualquier máquina. El mismo `docker-compose.yml` funciona en Linux, macOS y Windows sin instalar Neo4j manualmente ni gestionar dependencias del sistema operativo.

**¿Por qué FastAPI?**

FastAPI genera documentación interactiva automáticamente en `/docs`, valida los datos de entrada con Pydantic sin código extra, y su rendimiento es adecuado para una capa de acceso a datos. El mismo código funciona en local y en Railway sin modificaciones. Estas puede que no sean las mejores herramientas para el proyecto pero considero que puede estar muy interesante aprender a trabajar con ellas como primer contacto.

---

## 📝 Nota sobre el código Python

Los scripts de Python incluidos en este repositorio (`script.py` y el módulo `api/`) fueron desarrollados con asistencia de la IA Claude como herramienta de apoyo durante el proceso de aprendizaje.

La decisión de delegar la escritura de los scripts fue intencionada: el objetivo principal de este trabajo es trabajar **Neo4j, Cypher y el modelado de grafos**, no el desarrollo backend en Python. Utilizar IA como asistente me permitirá centrarme en comprender la arquitectura completa del sistema — cómo una base de datos de grafos se conecta con una API REST y cómo se despliega en contenedores — sin invertir tiempo en depurar sintaxis de Python.

Esto refleja una forma de trabajar cada vez más habitual en el sector: usar herramientas de IA para acelerar las partes fuera del foco principal, manteniendo el criterio técnico sobre las decisiones de arquitectura y diseño.

---

## 🛣️ Próximos pasos (rama `fullstack`)

- [ ] Despliegue de Neo4j en Railway con volumen persistente
- [ ] Despliegue de la API FastAPI en Railway
- [ ] Frontend desplegado en Vercel
- [ ] Autenticación de usuarios
- [ ] Pipeline CI/CD con GitHub Actions

---

## 🛠️ Tecnologías que podrían ser útiles (revisar)

| Tecnología | Versión | Rol |
|---|---|---|
| Neo4j Community | 5.18 | Base de datos de grafos |
| APOC | auto | Librería de procedimientos Neo4j |
| Docker Compose | v2 | Orquestación de contenedores |
| Python | 3.12 | Lenguaje de scripting y API |
| FastAPI | 0.111 | Framework API REST |
| Pydantic | 2.7 | Validación de datos |
| neo4j-driver | 5.20 | Driver oficial Python para Neo4j |
| uvicorn | 0.29 | Servidor ASGI |

---

## 👥 Autoría

Proyecto desarrollado como supuesto práctico para la asignatura de **Bases de Datos** con foco en bases de datos orientadas a grafos.

- **Base de datos y modelo de datos** — elaborado en equipo
- **Infraestructura Docker y despliegue local**
- **Scripts Python y API REST** — desarrollados con asistencia de la IA Claude

---

*GameLink · Proyecto académico · 2026*
