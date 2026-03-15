"""
GameLink · Modelos de datos (Pydantic)
Se usan tanto en la API como en el script de demostración.
Propiedades ajustadas a la base de datos real.
"""

from pydantic import BaseModel
from typing import Optional


class Usuario(BaseModel):
    id: str
    name: str
    country: Optional[str] = None
    signupDate: Optional[str] = None


class Videojuego(BaseModel):
    id: str
    title: str
    year: Optional[int] = None


class Developer(BaseModel):
    name: str
    country: Optional[str] = None


class Platform(BaseModel):
    name: str


class Genre(BaseModel):
    name: str


class RegistrarPartida(BaseModel):
    usuario: str          # name del usuario
    juego: str            # title del juego


class RelacionUsuario(BaseModel):
    usuario_origen: str   # name del usuario origen
    usuario_destino: str  # name del usuario destino
