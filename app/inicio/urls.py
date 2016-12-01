from django.conf.urls import url

from app.inicio import views


urlpatterns = [
    url(r'^$', views.inicio, name="inicio"),
    url(r'^notificaciones/$', views.notiverView, name="notiverView"),
    url(r'^notificaciones/(?P<idnoti>[0-9]+)', views.notiDetalleView, name="notifyDetalleview"),
    url(r'^notificaciones/enviar', views.notiSendView, name="notiSendView"),
    # Ajax
    url(r'^ajax/conteimages/add', views.conteimages, name="conteimages"),
    url(r'^ajax/conteimages/eliminar', views.conteimagesBorrar, name="conteimagesBorrar"),
    url(r'^ajax/estudiantes/grupo', views.estuporgrupo, name="estuporgrupo"),
]
