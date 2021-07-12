from django import forms
from django.forms import ModelForm
from core.models import Vehiculo, TrabajoRealizado

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







  #patente = forms.CharField(max_length=6)
  #marca = forms.CharField(max_length=30)
  #modelo = forms.CharField(max_length=30)
  #annio = forms.IntegerField()

  def clean_patente(self):
    patente = self.cleaned_data.get("patente")
    qs = Vehiculo.objects.filter(patente__iexact=patente)
    if patente in non_allowed_patentes:
      raise forms.ValidationError("Esta patente no está disponible.")
    if qs.exists():
      raise forms.ValidationError("Esta patente no está disponible.")
    non_allowed_patentes.append(patente)
    print(non_allowed_patentes)
    return patente

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
