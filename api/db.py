"""
GameLink · Conexión a Neo4j
Módulo reutilizable tanto en local como en Railway.
"""

import os
from neo4j import GraphDatabase
from dotenv import load_dotenv

load_dotenv()

URI      = os.getenv("NEO4J_URI", "bolt://localhost:7687")
USER     = os.getenv("NEO4J_USER", "neo4j")
PASSWORD = os.getenv("NEO4J_PASSWORD", "gamelink1234")


def get_driver():
    """Devuelve un driver Neo4j listo para usar."""
    return GraphDatabase.driver(URI, auth=(USER, PASSWORD))


def verify_connection():
    """Comprueba que la conexión es correcta. Lanza excepción si falla."""
    driver = get_driver()
    driver.verify_connectivity()
    driver.close()
