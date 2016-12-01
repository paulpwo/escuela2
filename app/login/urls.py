from django.conf.urls import url

from . import views

urlpatterns = [

    url(r'^login', views.loginView, name="loginView"),
    url(r'^logout', views.logout_view, name="logout_view"),
    url(r'^cambiarclave/(?P<user>[0-9]+)/(?P<rol>\w+)/', views.cambiarclave, name="cambiarclave"),
]