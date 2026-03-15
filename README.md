# 🎮 GameLink — Red Social de Videojuegos con Neo4j

Proyecto académico de bases de datos orientadas a grafos.
Instancia local de Neo4j en Docker con API REST (FastAPI) y scripts de demostración.

---

## Requisitos

- Docker y Docker Compose
- Python 3.10+

---

## Puesta en marcha

### 1. Clonar y configurar entorno

```bash
git clone <url-del-repo>
cd neo4j-proyecto
cp .env.example .env        # edita .env con tus credenciales
```

### 2. Levantar Neo4j

```bash
docker compose up -d
```

Abre **http://localhost:7474** en el navegador.
Credenciales: las que hayas puesto en `.env` (por defecto `neo4j` / `gamelink1234`).

### 3. Importar los datos

```bash
# Copia el fichero .cypher de tu compañero a la carpeta import/
cp ruta/datos.cypher ./import/

# Ejecuta la importación
docker exec -it neo4j-gamelink cypher-shell \
  -u neo4j -p gamelink1234 \
  --file /var/lib/neo4j/import/datos.cypher
```

### 4. Instalar dependencias Python

```bash
pip install -r api/requirements.txt
```

### 5. Ejecutar el script de demostración

```bash
python script.py
```

### 6. Levantar la API

```bash
uvicorn api.main:app --reload
```

Documentación interactiva disponible en **http://localhost:8000/docs**

---

## Estructura del proyecto

```
neo4j-proyecto/
├── docker-compose.yml        ← Neo4j en Docker
├── .env                      ← credenciales (no subir a Git)
├── .env.example              ← plantilla de credenciales
├── .gitignore
├── README.md
├── script.py                 ← demo de consultas Cypher
├── import/
│   └── datos.cypher          ← datos exportados desde Aura
├── data/                     ← persistencia Neo4j (auto-generado)
├── logs/                     ← logs del servidor
├── plugins/                  ← APOC (descargado automáticamente)
└── api/
    ├── main.py               ← endpoints FastAPI
    ├── db.py                 ← conexión a Neo4j
    ├── models.py             ← modelos de datos
    └── requirements.txt
```

---

## Endpoints de la API

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | `/` | Estado de la API |
| GET | `/stats` | Resumen del grafo |
| GET | `/usuarios` | Listar usuarios |
| POST | `/usuarios` | Crear usuario |
| GET | `/usuarios/{nombre}/amigos` | Amigos de un usuario |
| GET | `/usuarios/{nombre}/juegos` | Juegos de un usuario |
| POST | `/amistad` | Crear relación de amistad |
| POST | `/bloquear` | Bloquear a un usuario |
| GET | `/juegos` | Listar videojuegos |
| POST | `/juegos` | Registrar videojuego |
| POST | `/partidas` | Registrar que un usuario ha jugado |
| GET | `/recomendaciones/{nombre}` | Juegos recomendados por amistad |

---

## Escalar a Railway + Vercel

Cuando quieras desplegar en la nube:

1. Sube el repositorio a GitHub
2. Crea un proyecto en [Railway](https://railway.app) e importa el repo
3. Railway detectará el `docker-compose.yml` automáticamente
4. Copia las variables de `.env` en el panel de Railway
5. Despliega el frontend en [Vercel](https://vercel.com) apuntando a la URL pública de Railway

---

## Tecnologías

- **Neo4j 5.18** — base de datos orientada a grafos
- **APOC** — librería de procedimientos para Neo4j
- **Docker Compose** — orquestación de contenedores
- **FastAPI** — API REST asíncrona en Python
- **Pydantic** — validación de datos
- **neo4j Python Driver** — conexión oficial a Neo4j
