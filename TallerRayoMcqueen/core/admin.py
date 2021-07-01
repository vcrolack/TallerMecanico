from .models import Especialidad, Mecanico, TrabajoRealizado, Vehiculo
from django.contrib import admin

# Register your models here.
admin.site.register(Especialidad)
admin.site.register(Mecanico)
admin.site.register(Vehiculo)
admin.site.register(TrabajoRealizado)