# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')

from django.contrib.auth.decorators import login_required
from app.inicio.forms import  categoriasForm
from django.shortcuts import render, get_object_or_404
from django.http.response import HttpResponseRedirect, JsonResponse, Http404
from django.core.urlresolvers import reverse
from app.inicio.models import Categorias

@login_required(login_url="/login")
def categoriaAddView(request):
    if request.user.profile.rol == 1:
        if request.method == 'POST':
            cform = categoriasForm(request.POST)
            if cform.is_valid():
                cform.save()
                return HttpResponseRedirect(reverse('categoriaVerView'))
        else:
            cform = categoriasForm()
        return render(request, "categoriasadd.html", { "cform": cform })
    raise Http404

@login_required(login_url="/login")
def categoriaEditView(request, idcate):
    if request.user.profile.rol == 1:
        c = get_object_or_404(Categorias, id=idcate)
        if request.method == 'POST':
            cform = categoriasForm(data=request.POST, instance=c)
            if cform.is_valid():
                cform.save()
                return HttpResponseRedirect(reverse('categoriaVerView'))
        else:
            cform = categoriasForm(instance=c)
        return render(request, "categoriasadd.html", {"cform": cform,
                                                      "modo": "edit",
                                                      "cate": c.id })
    raise Http404

@login_required(login_url="/login")
def categoriaVerView(request):
    if request.user.profile.rol == 1:
        cs = Categorias.objects.all()
    elif request.user.profile.rol == 2:
        cs = request.user.docentes.categorias.all()
    else:
        raise Http404
    return render(request, "categorias.html", { "cs": cs })

@login_required(login_url="/login")
def categoriaBorrar(request):
    if request.method == "POST" and request.is_ajax():
        try:
            c = Categorias.objects.get(id=request.POST.get("cate"))
            c.delete()
        except:
            return JsonResponse({"status": "ERRORS"})
        return JsonResponse({"status": "OK"})
    raise Http404
