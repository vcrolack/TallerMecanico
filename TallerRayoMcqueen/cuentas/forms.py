from django.contrib.auth import get_user_model
from django import forms

nombres_no_disponibles = []
User = get_user_model()

class LoginForm(forms.Form):
  nombre_usuario = forms.CharField()
  contrasena = forms.CharField(
    widget=forms.PasswordInput(
      attrs={
        "class":"form-control",
        "id":"contrasena-usuario"
      }
    )
  )
  
  def clean_nombre_usuario(self):
    nombre_usuario = self.cleaned_data.get("nombre_usuario")
    qs = User.objects.filter(username__iexact=nombre_usuario)
    if not qs.exits():
      raise forms.ValidationError("Este nombre de usuario es invalido.")
    return nombre_usuario








def clean_nombre_usuario(self):
  nombre_usuario = self.cleaned_data.get("nombre_usuario")
  qs = User.objects.filter(username__iexact=nombre_usuario)
  if nombre_usuario in nombres_no_disponibles:
    raise forms.ValidationError("Escoge otro nombre de usuario, por favor.")
  if qs.exists():
    raise forms.ValidationError("Escoge otro nombre de usuario, por favor.")
  return nombre_usuario