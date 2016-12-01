from django.conf.urls import url

from . import views

urlpatterns = [
    # usuarios
    url(r'^usuarios/$', views.usuariosVerView, name="usuariosVerView"),
    url(r'^usuarios/agregar/', views.usuariosAddView, name="usuariosAddView"),
    url(r'^usuarios/(?P<idpro>[0-9]+)/', views.usuariosEditView, name="usuariosEditView"),
]