from administrador.forms import TrabajoRealizadoForm, VehiculoForm
from core.models import Mecanico, TrabajoRealizado, Vehiculo
from django.shortcuts import render, redirect
from django.contrib.admin.views.decorators import staff_member_required
from PIL import Image
from django.core.files.uploadedfile import SimpleUploadedFile

# Create your views here.
@staff_member_required
def admin_view(request):
  autos = Vehiculo.objects.all()
  trabajos_realizados = TrabajoRealizado.objects.all()
  contexto = {
    "autos": autos,
    "trabajos_realizados": trabajos_realizados,
  }
  return render(request, 'administrador/administracion.html', contexto)

@staff_member_required
def form_vehiculo_view(request, *args, **kwargs):
  contexto = {
    'form': VehiculoForm(),
  }
  if request.method == 'POST':
    form = VehiculoForm(request.POST)
    if form.is_valid():
      form.save()
      contexto['mensaje'] = "Vehículo añandido."
  return render(request, "administrador/form_vehiculo.html", contexto)


@staff_member_required
def form_mod_vehiculo_view(request, id):
  vehiculo = Vehiculo.objects.get(patente=id)
  mecanicos = Mecanico.objects.all()
  vehiculos = Vehiculo.objects.all()
  contexto = {
    'form': VehiculoForm(instance=vehiculo),
    'vehiculo': vehiculo,
    'mecanicos': mecanicos,
    'vehiculos': vehiculos
  }
  if request.method == 'POST':
    form = VehiculoForm(data=request.POST, instance=vehiculo)
    if form.is_valid():
      form.save()
      contexto['mensaje'] = "Datos modificados correctamente."
  return render(request, 'administrador/form_mod_vehiculo.html', contexto)


@staff_member_required
def form_del_vehiculo_view(request, id):
  vehiculo = Vehiculo.objects.get(patente=id)
  vehiculo.delete()
  return redirect(to="admin_view")

@staff_member_required
def form_trabajo_realizado_view(request):
  mecanicos = Mecanico.objects.all()
  vehiculos = Vehiculo.objects.all()
  contexto = {
    'form': TrabajoRealizadoForm(),
    'mecanicos': mecanicos,
    'vehiculos': vehiculos,
  }
  if request.POST == 'POST':   
    form = TrabajoRealizadoForm(request.POST, request.FILES)
    if form.is_valid():
      form.save()
      contexto['mensaje'] = "Trabajo añadido con éxito"
  return render(request, 'administrador/form_trabajo_realizado.html', contexto)

@staff_member_required
def form_mod_trabajo_realizado_view(request, id):
  trabajo_realizado = TrabajoRealizado.objects.get(id_trabajo=id)
  mecanicos = Mecanico.objects.all()
  vehiculos = Vehiculo.objects.all()
  contexto = {
    'form': TrabajoRealizadoForm(instance=trabajo_realizado),
    'trabajo_realizado': trabajo_realizado,
    'mecanicos': mecanicos,
    'vehiculos': vehiculos,
  }
  if request.method == 'POST':
    form = TrabajoRealizadoForm(data=request.POST, instance=trabajo_realizado)
    if form.is_valid():
      form.save()
      contexto['mensaje'] = "Datos modificados correctamente."
  return render(request, 'administrador/form_mod_trabajo_realizado.html', contexto)

def form_del_trabajo_realizado_view(request, id):
  trabajo_realizado = TrabajoRealizado.objects.get(id_trabajo=id)
  trabajo_realizado.delete()
  return redirect(to="admin_view")