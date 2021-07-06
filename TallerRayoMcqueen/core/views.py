from .models import Mecanico, TrabajoRealizado
from django.shortcuts import render

# Create your views here.
def index(request):

  trabajos_realizados = TrabajoRealizado.objects.all()
  mecanicos = Mecanico.objects.all()

  print(trabajos_realizados)
  
  contexto = {
    'trabajos_realizados': trabajos_realizados,
    'mecanicos': mecanicos,
  }

  return render(request, 'core/index.html', contexto)

def quienes_somos(request):
  return render(request, 'core/quienesSomos.html')

def busquedas(request):
  return render(request, 'core/busquedas.html')

def contacto(request):
  return render(request, 'core/contacto.html')

def mecanicos(request):
  return render(request, 'core/mecanicos.html')

def trabajo(request, id):
  trabajo_realizado = TrabajoRealizado.objects.get(id_trabajo = id)
  contexto = {
    'trabajo_realizado': trabajo_realizado,
  }
  return render(request, 'core/trabajosDestacados/trabajo{}.html'.format(id), contexto)