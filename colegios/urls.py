"""colegios URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^admin/', admin.site.urls),

    url(r'^', include('app.inicio.urls')),
    url(r'^', include('app.login.urls')),
    url(r'^', include('app.institucional.urls')),
    url(r'^', include('app.categoria.urls')),
    url(r'^', include('app.contentcategoria.urls')),
    url(r'^', include('app.usuario.urls')),
    url(r'^', include('app.docente.urls')),
    url(r'^api/', include('app.api.urls')),

    url(r'^o/', include('oauth2_provider.urls', namespace='oauth2_provider')),

] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
