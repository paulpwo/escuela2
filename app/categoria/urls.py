from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^grupos/$', views.categoriaVerView, name="categoriaVerView"),
    url(r'^grupos/agregar/', views.categoriaAddView, name="categoriaAdd"),
    url(r'^grupos/eliminar/', views.categoriaBorrar, name="categoriaBorrar"),
    url(r'^grupos/(?P<idcate>[0-9]+)/$', views.categoriaEditView, name="categoriaEditView"),

]