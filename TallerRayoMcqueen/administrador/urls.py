from os import name
from django.conf import settings
from django.urls import path
from django.conf.urls.static import static
from .views import (
  admin_view,
  form_vehiculo_view
)

urlpatterns = [
  path('administracion/', admin_view, name="admin_view"),
  path('form-vehiculo/', form_vehiculo_view, name="form_vehiculo_view"),
]