from django.shortcuts import render

# Create your views here.
def index(request):
  return render(request, 'core/index.html')

def quienes_somos(request):
  return render(request, 'core/quienesSomos.html')

def busquedas(request):
  return render(request, 'core/busquedas.html')

def contacto(request):
  return render(request, 'core/contacto.html')

def mecanicos(request):
  return render(request, 'core/mecanicos.html')
