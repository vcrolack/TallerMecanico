from os import name
from django.conf import settings
from django.urls import path
from django.conf.urls.static import static
from .views import (
  admin_view,
  form_del_trabajo_realizado_view,
  form_del_vehiculo_view,
  form_mod_trabajo_realizado_view,
  form_mod_vehiculo_view,
  form_trabajo_realizado_view,
  form_vehiculo_view
)

urlpatterns = [
  path('administracion/', admin_view, name="admin_view"),
  path('form-vehiculo/', form_vehiculo_view, name="form_vehiculo_view"),
  path('form-mod-vehiculo/<id>', form_mod_vehiculo_view, name="form_mod_vehiculo"),
  path('form-del-vehiculo/<id>', form_del_vehiculo_view, name="form_del_vehiculo_view"),
  path('form-trabajo-realizado/', form_trabajo_realizado_view, name="form_trabajo_realizado_view"),
  path('form-mod-trabajo-realizado/<id>', form_mod_trabajo_realizado_view, name="form_mod_trabajo_realizado_view"),
  path('form-del-trabajo-realizado/<id>', form_del_trabajo_realizado_view, name="form_del_trabajo_realizado_view")
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)