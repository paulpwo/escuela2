from django.conf.urls import url

from . import views

urlpatterns = [
    # categorias

    url(r'^grupos/(?P<idcate>[0-9]+)/contenido/$', views.cateConteVerView, name="cateConteVerView"),

    url(r'^grupos/(?P<idcate>[0-9]+)/contenido/agregar/$', views.cateConteAddView, name="cateConteAddView"),

    url(r'^grupos/(?P<idcate>[0-9]+)/contenido/(?P<idconte>[0-9]+)/$',
        views.cateConteEditView, name="cateConteEditView"),

    url(r'^grupos/(?P<idcate>[0-9]+)/contenido/(?P<idconte>[0-9]+)/ver/$',
        views.cateConteVerDetalleView, name="cateConteVerDetalleView"),
]