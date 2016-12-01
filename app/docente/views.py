# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')

from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from app.inicio.forms import profileForm, usercreateForm,  userchangeForm,   docentesCreateForm
from django.shortcuts import render, get_object_or_404
from django.http.response import HttpResponseRedirect,  Http404
from django.core.urlresolvers import reverse
from app.inicio.models import Docentes


@login_required(login_url="/login")
def docentesVerView(request):
    if request.user.profile.rol == 1:
        ds = Docentes.objects.all()
        return render(request, "docentes.html", { "ds": ds })
    else:
        c = get_object_or_404(User, id=request.user.profile.id)
        print c.first_name
        return render(request, "docentes_main/main.html",{"c":c})


@login_required(login_url="/login")
def docentesAddView(request):
    if request.user.profile.rol == 1:
        if request.method == 'POST':
            ucform = usercreateForm(request.POST)
            pform = profileForm(request.POST)
            dcform = docentesCreateForm(request.POST)

            if pform.is_valid() and ucform.is_valid() and dcform.is_valid():
                payload = ucform.save()
                # guardamos el perfil del usuario
                rpform = pform.save(commit=False)
                rpform.user_id = payload.id
                rpform.rol = 2  # id rol docente
                rpform.save()
                # guardamos al docente y su grupo
                rdcform = dcform.save(commit=False)
                rdcform.user_id = payload.id
                rdcform.save()
                dcform.save_m2m()

                # guardamos los estudiantes
                return HttpResponseRedirect(reverse("docentesVerView"))
        else:
            ucform = usercreateForm()
            pform = profileForm()
            dcform = docentesCreateForm()
        return render(request, "docentesadd.html", { "ucform": ucform, "pform": pform, "dcform": dcform })
    raise Http404


@login_required(login_url="/login")
def docentesEditView(request, doce):
    if request.user.profile.rol == 1:
        ds = get_object_or_404(Docentes, id=doce)
        if request.method == 'POST':
            ucform = userchangeForm(data=request.POST, instance=ds.user)
            pform = profileForm(request.POST, request.FILES, instance=ds.user.profile)
            dcform = docentesCreateForm(data=request.POST, instance=ds)

            if ucform.is_valid():
                payload = ucform.save()
            if pform.is_valid():
                # guardamos el perfil del usuario
                rpform = pform.save(commit=False)
                rpform.user_id = ds.user.id
                rpform.rol = 2  # id rol docente
                rpform.save()
            if dcform.is_valid():
                # guardamos al docente y los grupos
                rdcform = dcform.save(commit=False)
                rdcform.user_id = ds.user.id
                rdcform.save()
                dcform.save_m2m()

            return HttpResponseRedirect(reverse("docentesVerView"))
        else:
            ucform = userchangeForm(instance=ds.user)
            pform = profileForm(instance=ds.user.profile)
            dcform = docentesCreateForm(instance=ds)
        return render(request, "docentesadd.html", { "ucform": ucform, "pform": pform,
                                                     "dcform": dcform, "modo": "edit" })
    raise Http404