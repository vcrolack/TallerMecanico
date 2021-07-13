from django import forms
from django.forms import ModelForm
from core.models import Vehiculo, TrabajoRealizado
from PIL import Image

non_allowed_patentes = []
class VehiculoForm(ModelForm):
  class Meta:
    model = Vehiculo
    fields =[
      'patente',
      'marca',
      'modelo',
      'annio'
    ]


  def clean_patente(self):
    patente = self.cleaned_data.get("patente")
    cl_patente = patente.upper()
    print(non_allowed_patentes)
    return cl_patente

  def clean_marca_modelo(self):
    marca = self.cleaned_data.get("marca")
    if len(marca) <= 0:
      forms.ValidationError("Completa el campo de marca.")
    return marca

  
  def clean_modelo(self):
    modelo = self.cleaned_data.get("modelo")
    if len(modelo) <= 0:
      forms.ValidationError("Completa el campo de modelo.")
    return modelo
  
  def clean_annio(self):
    annio = self.cleaned_data.get("annio")
    if annio < 1900:
      forms.ValidationError("Completa el campo año.")
    return annio


class TrabajoRealizadoForm(ModelForm):
  class Meta:
    model = TrabajoRealizado
    fields = [
      'id_trabajo',
      'tipo_trabajo',
      'mecanico',
      'vehiculo',
      'mas_informacion',
      'foto_trabajo',
    ]