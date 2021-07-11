from cuentas.views import login_view
from django.urls import path
from .views import busquedas, contacto, index, mecanicos, quienes_somos, trabajo
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
  path('', index, name = "home"),
  path('quienes_somos/', quienes_somos, name = "quienes_somos"),
  path('busquedas/', busquedas, name = "busquedas"),
  path('mecanicos/', mecanicos, name = "mecanicos"),
  path('contacto/', contacto, name = "contacto"),
  path('trabajo<id>/', trabajo, name = "trabajo"),
 # path('login/', login_view, name="login_view")

] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)