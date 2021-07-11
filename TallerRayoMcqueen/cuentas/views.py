from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout, get_user_model
#from django.contrib.admin.views.decorators import login_required
from .forms import LoginForm, RegisterForm

# Create your views here.
User = get_user_model()
def register_view(request):
  form = RegisterForm(request.POST or None)

  if form.is_valid():
    username = form.cleaned_data.get("username")
    email = form.cleaned_data.get("email")
    password = form.cleaned_data.get("password")

    try:
      user = User.objects.create_user(username, email, password)
    except:
      user = None

    if user != None:
      login(request, user)
      return redirect("/")
    else:
      request.session['error_registro'] =1
      form.add_error(None, "Ha ocurrido un error con su registro.")
  
  return render(request, "cuentas/forms_register.html", {"form":form})

def login_view(request):
  form = LoginForm(request.POST or None)

  if form.is_valid():
    username = form.cleaned_data.get("username")
    password = form.cleaned_data.get("password")
    user = authenticate(request, username = username, password=password)

    if user != None:
      login(request, user)
      return redirect("/")
    else:
      request.session['invalid_user'] = 1
      form.add_error(None, "Usuario inválido. Asegúrate de llenar ambos campos.")
  return render(request, "cuentas/forms_login.html", {"form": form})

def logout_view(request):
  logout(request)
  return redirect("/login/")
