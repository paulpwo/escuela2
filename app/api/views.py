from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http.response import JsonResponse, HttpResponse, Http404
from oauth2_provider.decorators import protected_resource
from oauth2_provider.ext.rest_framework.authentication import OAuth2Authentication
from rest_framework.pagination import PageNumberPagination
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth.forms import PasswordChangeForm, UserChangeForm

from app.inicio.forms import profileForm
from app.inicio.models import Institucional, Contenido, Tokens, Profile, Megusta, Docentes, Categorias, Notificaciones
from app.api.serializers import meSerializer, institucionalSerializer, \
    contenidoListSerializer, contenidoSerializer, docentesListSerializer, docenteSerializer, categoriasSerializer
from rest_framework.response import Response
from rest_framework.views import APIView
from app.api.forms import TokensForm, userChangeForm
from rest_framework import generics

@protected_resource()
def apiMe(request):
    payload = meSerializer(request.resource_owner)
    return JsonResponse({"status": "OK", "result": payload.data })

#@protected_resource()
def apiInstitucional(request):
    payload = institucionalSerializer(Institucional.objects.first())
    return JsonResponse({"status": "OK", "result": payload.data})


class StandardResultsSetPagination(PageNumberPagination):
    page_size = 100
    page_size_query_param = 'page_size'
    max_page_size = 100

    def get_paginated_response(self, data):
        if self.page.paginator.count == 0:
            return Response({
                'status': "ZERO_RESULTS"
            })
        return Response({
            'status': "OK",
            'count': self.page.paginator.count,
            'links': {
                'next': self.get_next_link(),
                'previous': self.get_previous_link()
            },
            'results': data,
        })

class apiContenidoPage(generics.ListAPIView, APIView):

    authentication_classes = (OAuth2Authentication, )

    permission_classes = (IsAuthenticated,)

    queryset = Contenido.objects.all()
    serializer_class = contenidoListSerializer
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        payload = self.request.user.profile.estudiantes_set.all()

        cate = [(p.categoria.id) for p in payload]
        [([cate.append(i.id) for i in p.electivas.all()]) for p in payload]

        post = self.request.GET.get("q", None)
        if post is not None:
            return self.queryset.filter(titulo__icontains=post,
                                        grupo__in=cate).order_by('-id')
        return self.queryset.filter(grupo__in=cate).order_by('-id')


@protected_resource()
def apiContenido(request):
    try:
        cs = Contenido.objects.get(id=request.GET.get("conte"))
    except Contenido.DoesNotExist:
        return JsonResponse({"status": "ZERO_RESULTS"})
    payload = contenidoSerializer(cs)
    return JsonResponse({"status": "OK", "results": payload.data})

class apiProfesoresPage(generics.ListAPIView, APIView):

    authentication_classes = (OAuth2Authentication, )

    permission_classes = (IsAuthenticated,)

    queryset = Docentes.objects.all()
    serializer_class = docentesListSerializer
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        return self.queryset.filter(user__profile__rol=2)


@protected_resource()
def apiProfesores(request):
    try:
        ps = Docentes.objects.get(user__profile__rol=2,
                                  id=request.GET.get("doce"))
    except Docentes.DoesNotExist:
        return JsonResponse({"status": "ZERO_RESULTS"})

    payload = docenteSerializer(ps)
    return JsonResponse({"status": "OK", "results": payload.data})


@protected_resource()
def apiTokens(request):
    try:
        ts = Tokens.objects.get(device=request.GET.get("device"))
        tsform = TokensForm(data=request.GET, instance=ts)
    except:
        tsform = TokensForm(request.GET)

    if tsform.is_valid():
        rtsform = tsform.save(commit=False)
        rtsform.acudiente_id = request.resource_owner.profile.id
        rtsform.save()
        return JsonResponse({"status": "OK"})
    return JsonResponse({"status": "ERRORS", "results": tsform.errors })

@protected_resource()
def apiChangePassword(request):
    # 'old_password', 'new_password1', 'new_password2'
    pcform = PasswordChangeForm(data=request.GET, user=request.resource_owner)
    if pcform.is_valid():
        pcform.save()
        return JsonResponse({"status": "OK"})
    return JsonResponse({"status": "ERRORS", "results": pcform.errors})

@protected_resource()
def apiChangeUserProfile(request):
    ucform = userChangeForm(data=request.GET, instance=request.resource_owner)
    pform = profileForm(data=request.GET, files=request.FILES, instance=request.resource_owner.profile)
    if ucform.is_valid():
        ucform.save()
    if pform.is_valid():
        ucform.save()
    return JsonResponse({"status": "OK", "results": {"user": ucform.errors, "profile": pform.errors }})

@protected_resource()
def likedislike(request):
    try:
        mg = Megusta.objects.get(user= request.resource_owner.profile,
                            contenido= request.GET.get("post"))
        mg.delete()
        return JsonResponse({ "status": "OK", "results": "dislike" })
    except:
        Megusta.objects.create(user= request.resource_owner.profile,
                            contenido_id= request.GET.get("post"))
        return JsonResponse({"status": "OK", "results": "like" })


def emailinfo(request):
    cs = categoriasSerializer(Categorias.objects.all(),
                         many=True)
    ins = Institucional.objects.first()
    result = {"status": "OK", "results": { "categorias": cs.data, "email": ins.email }}
    return JsonResponse(result)

def generate_204(request):
    return HttpResponse(status=204)


@login_required
def userDeleteApi(request):
    if request.method == 'POST':
        try:
            u = User.objects.get(id=request.POST.get("user"))
        except:
            return JsonResponse({"status": "ERRORS"})
        u.delete()
        return JsonResponse({"status": "OK"})
    raise Http404


@login_required
def notifyDeleteApi(request):
    if request.method == 'POST':
        try:
            u = Notificaciones.objects.get(id=request.POST.get("idd"))
        except:
            return JsonResponse({"status": "ERRORS"})
        u.delete()
        return JsonResponse({"status": "OK"})
    raise Http404


@login_required
def cateconteDeleteApi(request):
    if request.method == 'POST':
        try:
            u = Contenido.objects.get(id=request.POST.get("idd"))
        except:
            return JsonResponse({"status": "ERRORS"})
        u.delete()
        return JsonResponse({"status": "OK"})
    raise Http404