# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')

from django.contrib.auth.decorators import login_required
from app.inicio.forms import  InstitucionalForm
from django.shortcuts import render
from django.http.response import HttpResponseRedirect,  Http404
from django.core.urlresolvers import reverse
from app.inicio.models import Institucional

# Create your views here.
@login_required(login_url="/login")
def institucionalView(request):
    if request.user.profile.rol == 1:
        n = Institucional.objects.first()
        if request.method == 'POST':
            nform = InstitucionalForm(data=request.POST, instance=n)
            if nform.is_valid():
                nform.save()
                return HttpResponseRedirect(reverse("institucionalView"))
        else:
            nform = InstitucionalForm(instance=n)
        return render(request, "institucional.html", { "nform": nform })
    raise Http404