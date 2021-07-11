from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout, get_user_model
#from django.contrib.admin.views.decorators import login_required
from .forms import LoginForm

# Create your views here.

def login_view(request):
  form = LoginForm(request.POST or None)

  if form.is_valid():
    nombre_usuario = form.cleaned_data.get("nombre_usuario")
    contrasena = form.cleaned_data.get("contrasena")
    user = authenticate(request, nombre_usuario = nombre_usuario, contrasena=contrasena)

    if user != None:
      login(request, user)
      return redirect("/")
    else:
      request.session['invalid_user'] = 1
  return render(request, "cuentas/forms.html", {"form": form})

def logout_view(request):
  logout(request)
  return redirect("login/")