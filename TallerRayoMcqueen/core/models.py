from django.db import models
from django.db.models.fields import BLANK_CHOICE_DASH
from django.db.models.fields.related import ForeignKey

# Create your models here.

class Especialidad(models.Model):
  id_especialidad = models.IntegerField(
    primary_key = True, 
    verbose_name = "Id especialidad", 
    null = False, 
    blank = False
  )
  nombre_especialidad = models.CharField(
    max_length = 20, 
    verbose_name = "Nombre especialidad", 
    null = False, 
    blank = False
  )

  def __str__(self):
    return self.nombre_especialidad


class Mecanico(models.Model):

  id_mecanico = models.IntegerField(
    primary_key = True, 
    verbose_name = "Id mecanico", 
    null = False, 
    blank = False
  )
  nombre_mecanico = models.CharField(
    max_length = 50, 
    verbose_name = "Nombre mecanico", 
    null = False, 
    blank = False
  )
  apellido_mecanico = models.CharField(
    max_length = 50,
    verbose_name = "Apellido mecanico",
    null = False,
    blank = False
  )
  descripcion_mecanico = models.CharField(
    max_length = 240, 
    verbose_name = "Descripcion mecanico", 
    null = False, 
    blank = False
  )
  especialidad = models.ForeignKey(
    Especialidad, 
    on_delete = models.CASCADE, 
    verbose_name = "especialidad", 
    null = False, 
    blank = False
  )
  foto_mecanico = models.ImageField(
    upload_to = "fotosMecanicosDB", 
    null = False, 
    verbose_name = "Foto mecanico", 
    blank = False
  )

  def __str__(self):
    return self.nombre_mecanico


class Vehiculo(models.Model):

  patente = models.CharField(
    primary_key = True, 
    verbose_name = "Patente", 
    max_length = 6, 
    null = False, 
    blank = False
  )

  marca = models.CharField(
    max_length = 30, 
    verbose_name = "Marca", 
    null = False, 
    blank = False
  )
  modelo = models.CharField(
    max_length = 30, 
    verbose_name = "Modelo", 
    null = False, 
    blank = False
  )
  annio = models.IntegerField(
    verbose_name = "Annio", 
    null = False, 
    blank = False 
  )

  def __str__(self):
    return self.modelo


class TrabajoRealizado(models.Model):

  id_trabajo = models.IntegerField(
    primary_key = True,
    verbose_name = "Id trabajo realizado",
    null = False, 
    blank = False
  )

  tipo_trabajo = models.CharField(
    max_length = 50, 
    verbose_name = "Tipo de trabajo", 
    null = False, 
    blank = False
  )

  mecanico = models.ForeignKey(
    Mecanico, 
    on_delete=models.CASCADE, 
    verbose_name = "mecanico", 
    null = False, 
    blank = False
  )

  vehiculo = models.ForeignKey(
    Vehiculo, 
    on_delete=models.CASCADE, 
    verbose_name = "vehiculo", 
    null = False, 
    blank = False
  )

  mas_informacion = models.CharField(
    max_length = 100, verbose_name = 
    "Mas informacion", 
    null = False, 
    blank = False
  )

  foto_trabajo = models.ImageField(upload_to = "fotosTrabajosDB")

  def __str__(self):
    return self.tipo_trabajo


class Imagen(models.Model):

  id_imagen = models.IntegerField(
    primary_key = True,
    verbose_name = "Id imagen",
    null = False,
    blank = False
  )

  nombre_imagen = models.CharField(
    max_length = 20,
    null = False,
    blank = False,
    verbose_name = "Imagen"
  )

  imagen = models.ImageField(upload_to = "imagenesDB")

  def __str__(self):
    return self.nombre_imagen

class Servicio(models.Model):

  id_servicio = models.IntegerField(
    primary_key = True,
    verbose_name = "Id servicio",
    null = False,
    blank = False
  )

  nombre_servicio = models.CharField(
    max_length = 50,
    verbose_name = "Nombre servicio",
    null = False,
    blank = False
  )

  descripcion_servicio = models.CharField(
    max_length = 500,
    verbose_name = "Nombre servicio",
    null = False,
    blank = False
  )

  def __str__(self):
    return self.nombre_servicio

