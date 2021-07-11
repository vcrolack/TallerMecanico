from .models import Mecanico, Servicio, TrabajoRealizado, Imagen
from django.contrib.auth.models import User
from django.shortcuts import render
from django.contrib.auth import get_user_model
# Create your views here.
user = User.objects.all()
def index(request):

  trabajos_realizados = TrabajoRealizado.objects.all()
  mecanicos = Mecanico.objects.all()

  mecanic = TrabajoRealizado.objects.select_related('mecanico').all().query

  print(trabajos_realizados)
  
  contexto = {
    'trabajos_realizados': trabajos_realizados,
    'mecanicos': mecanicos,
  }

  return render(request, 'core/index.html', contexto)

def quienes_somos(request):
  imagen_hero = Imagen.objects.get(id_imagen = 1)
  servicios = Servicio.objects.all()
  contexto = {
    'imagen': imagen_hero,
    'servicios': servicios,
  }
  return render(request, 'core/quienesSomos.html', contexto)

def busquedas(request):
  imagen = Imagen.objects.get(id_imagen = 4)
  contexto = {
    'imagen': imagen,
  }
  return render(request, 'core/busquedas.html', contexto)

def contacto(request):
  imagen = Imagen.objects.get(id_imagen = 3)
  contexto = {
    'imagen': imagen,

  }
  return render(request, 'core/contacto.html', contexto)

def mecanicos(request):
  mecanicos = Mecanico.objects.all()
  imagen_hero = Imagen.objects.get(id_imagen = 2)
  contexto = {
    'imagen':imagen_hero,
    'mecanicos': mecanicos
  }
  return render(request, 'core/mecanicos.html', contexto)

def trabajo(request, id):
  trabajo_realizado = TrabajoRealizado.objects.get(id_trabajo = id)
  contexto = {
    'trabajo_realizado': trabajo_realizado,
  }
  return render(request, 'core/trabajosDestacados/trabajo{}.html'.format(id), contexto)