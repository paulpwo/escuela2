from django.contrib.auth.decorators import login_required
from django.db.models.signals import post_save
from django.dispatch.dispatcher import receiver
from rest_framework import status
from app.inicio.forms import NotificacionesForm,   GaleriaForm,  push_service
from django.shortcuts import render, get_object_or_404
from django.http.response import HttpResponseRedirect, JsonResponse, Http404
from django.core.urlresolvers import reverse
from app.inicio.models import Estudiantes, Notificaciones, Contenido,  Galeria, Tokens
from django.db.models import Q
from app.inicio.serializers import estudiantesSerializer


def inicio(request):
    return HttpResponseRedirect(reverse('loginView'))


@login_required(login_url="/login")
def notiSendView(request):
    if request.method == 'POST':
        nform = NotificacionesForm(data=request.POST, request=request)
        if nform.is_valid():
            rnform = nform.save(commit=False)
            rnform.remitente = request.user.profile
            rnform.save()
            nform.save_m2m()
            nform.send_push()
            return HttpResponseRedirect(reverse("notiverView"))
    else:
        nform = NotificacionesForm(request=request)
    return render(request, "notisend.html", { "nform": nform })


@login_required(login_url="/login")
def notiverView(request):
    ns = Notificaciones.objects.all()
    return render(request, "notificaciones.html", { "ns": ns })


@login_required(login_url="/login")
def notiDetalleView(request, idnoti):
    #ns = Notificaciones.objects.all()
    ns = get_object_or_404(Notificaciones, id=idnoti)
    return render(request, "notidetalle.html", {"ns": ns})


# ajax

@login_required(login_url="/login")
def conteimages(request):
    if request.is_ajax() and request.method == 'POST':
        gform = GaleriaForm(request.POST, request.FILES)
        if gform.is_valid():
            res = gform.save()
            return JsonResponse({"status": "OK", "result": { "id": res.id } })
        return JsonResponse({"status": "ERRORS"}, status=status.HTTP_400_BAD_REQUEST)
    raise Http404


@login_required(login_url="/login")
def conteimagesBorrar(request):
    if request.is_ajax() and request.method == 'POST':
        try:
            g = Galeria.objects.get(id=request.POST.get("id"))
            g.delete()
            return JsonResponse({"status": "OK"})
        except:
            return JsonResponse({"status": "ERRORS"})
    raise Http404


@login_required(login_url="/login")
def estuporgrupo(request):
    #print(request.GET.get("cate"))
    es = Estudiantes.objects.filter(Q(categoria=request.GET.get("cate"))
                                    | Q(electivas=request.GET.get("cate", 0)) )
    if(len(es) == 0):
        return JsonResponse({"status": "ZERO_RESULTS"})
    payload = estudiantesSerializer(es, many=True)
    result = {"status": "OK", "result": payload.data}
    return JsonResponse(result)


# signal para enviar push 
@receiver(post_save, sender=Contenido)
def ContenidoReceiver(sender, instance, created, **kwargs):
    if created:
        ts = Tokens.objects.raw('SELECT `tokens`.`id`, `tokens`.`device`, `tokens`.`plataforma`, `tokens`.`token`, `tokens`.`acudiente_id` '\
                                    'FROM `contenido` '\
                                    'INNER JOIN `categorias`  ON  (`contenido`.`grupo_id` = `categorias`.`id`)  '\
                                    'INNER JOIN  `estudiantes` ON (`estudiantes`.`categoria_id` =  `categorias`.`id`) '\
                                    'INNER JOIN `tokens` ON (`tokens`.`acudiente_id` = `estudiantes`.`acudiente_id`) '\
                                    'LEFT JOIN `estudiantes_electivas` ON ( `estudiantes_electivas`.`estudiantes_id` = `estudiantes`.`id` ) '\
                                    'WHERE `contenido`.`id` = {0} '\
                                    'AND (`estudiantes`.`categoria_id` =  `categorias`.`id` OR  `estudiantes_electivas`.`categorias_id` =  `categorias`.`id`  ) '.format(instance.id))

        mtokens = [(t.token) for t in ts]
        if len(mtokens) > 0:
            payload = {
                "titulo": instance.titulo,
                "type": "Post",
                "message": instance.titulo,
            }
            push_service.notify_multiple_devices(registration_ids=mtokens, message_body=instance.titulo, data_message=payload,  sound="default",)
