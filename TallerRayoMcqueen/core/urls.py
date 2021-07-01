from django.urls import path
from .views import busquedas, contacto, index, mecanicos, quienes_somos

urlpatterns = [
  path('', index, name = "home"),
  path('quienes_somos/', quienes_somos, name = "quienes_somos"),
  path('busquedas/', busquedas, name = "busquedas"),
  path('mecanicos/', mecanicos, name = "mecanicos"),
  path('contacto/', contacto, name = "contacto"),

]