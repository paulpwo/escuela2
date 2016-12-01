from django.conf.urls import url

from . import views

urlpatterns = [
    # docentes
    url(r'^docentes/$', views.docentesVerView, name="docentesVerView"),
    url(r'^docentes/agregar/$', views.docentesAddView, name="docentesAddView"),
    url(r'^docentes/(?P<doce>[0-9]+)/', views.docentesEditView, name="docentesEditView"),


]