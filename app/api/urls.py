from django.conf.urls import url
from app.api import views

urlpatterns = [
    url(r'^me', views.apiMe, name="apiMe"),
    url(r'^institucional', views.apiInstitucional, name="apiInstitucional"),
    url(r'^contenido', views.apiContenidoPage.as_view(), name="apiContenido"),
    url(r'^cdetail', views.apiContenido, name="apiContenido"),

    url(r'^docentes', views.apiProfesoresPage.as_view(), name="apiProfesoresPage"),
    url(r'^dodetail', views.apiProfesores, name="apiProfesores"),

    url(r'^tokens', views.apiTokens, name="apiTokens"),

    url(r'^changepass', views.apiChangePassword, name="apiChangePassword"),
    url(r'^changeusepro', views.apiChangeUserProfile, name="apiChangeUserProfile"),

    url(r'^likedislike', views.likedislike, name="likedislike"),
    url(r'^emailinfo/', views.emailinfo, name="emailinfo"),

    url(r'^users/delete', views.userDeleteApi, name="userDeleteApi"),
    url(r'^notify/delete', views.notifyDeleteApi, name="notifyDeleteApi"),
    url(r'^cateconte/delete', views.cateconteDeleteApi, name="cateconteDeleteApi"),

    url(r'^generate_204', views.generate_204),
]
