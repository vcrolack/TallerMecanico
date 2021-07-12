from administrador.forms import VehiculoForm
from core.models import TrabajoRealizado, Vehiculo
from django.shortcuts import render, redirect
from django.contrib.admin.views.decorators import staff_member_required

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
      cd = form.cleaned_data
      form.save()
      contexto['mensaje'] = "Vehículo añandido."
  return render(request, "administrador/form_vehiculo.html", contexto)

