from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^institucional', views.institucionalView, name="institucionalView"),
]