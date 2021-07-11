from django.urls import path

from django.conf import settings
from django.conf.urls.static import static
from .views import (
  login_view,
  logout_view 
)
urlpatterns = [
  path('login/', login_view, name="login_view"),
  path('logout/', logout_view, name="logout_view"),
]