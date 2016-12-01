# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')

from app.inicio.forms import ContenidoForm
from app.inicio.models import Contenido, Categorias
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404
from django.http.response import HttpResponseRedirect
from django.core.urlresolvers import reverse


@login_required(login_url="/login")
def cateConteVerView(request, idcate):
    c = get_object_or_404(Categorias, id=idcate)
    cs = Contenido.objects.filter(grupo=idcate)
    return render(request, "catecontenido.html", { "cs": cs, "cate": idcate, "c": c })


@login_required(login_url="/login")
def cateConteAddView(request, idcate):
    if request.method == 'POST':
        cform = ContenidoForm(request.POST)
        if cform.is_valid():
            rcform = cform.save(commit=False)
            rcform.grupo_id = idcate
            rcform.autor = request.user.profile
            rcform.save()
            return HttpResponseRedirect(reverse("cateConteEditView",
                                                kwargs={ 'idcate': idcate, 'idconte': rcform.id }))
    else:
        cform = ContenidoForm()
    return render(request,"catecontenidoadd.html", { "cform": cform })


@login_required(login_url="/login")
def cateConteEditView(request, idcate, idconte):
    cs = get_object_or_404(Contenido, id=idconte, grupo=idcate)
    if request.method == 'POST':
        cform = ContenidoForm(request.POST, instance=cs)
        if cform.is_valid():
            cform.save()
            return HttpResponseRedirect(reverse("cateConteVerView", kwargs={'idcate': idcate}))
    else:
        cform = ContenidoForm(instance=cs)
    return render(request, "catecontenidoadd.html", {"cform": cform,
                                                     "modo": "edit",
                                                     "cs": cs,
                                                     "conte": idconte,

                                                     "cate": idcate })


@login_required(login_url="/login")
def cateConteVerDetalleView(request,  idcate, idconte):
    cs = get_object_or_404(Contenido, id=idconte, grupo=idcate)
    if request.method == 'POST':
        cform = ContenidoForm(request.POST, instance=cs)
        if cform.is_valid():
            cform.save()
            return HttpResponseRedirect(reverse("cateConteVerView", kwargs={'idcate': idcate}))
    else:
        cform = ContenidoForm(instance=cs)
    return render(request, "catecontenidodetalle.html", {"cform": cform,
                                                     "modo": "edit",
                                                     "cs": cs,
                                                     "conte": idconte,

                                                     "cate": idcate})