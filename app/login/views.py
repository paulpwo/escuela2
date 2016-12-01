from django.contrib.auth.decorators import login_required
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.forms import AdminPasswordChangeForm
from django.contrib.auth import login, logout
from django.http.response import HttpResponseRedirect, Http404
from app.inicio.forms import loginForm
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
# Create your views here.


def loginView(request):
    if not request.user.is_authenticated():
        if request.method == 'POST':
            lform = loginForm(data=request.POST)
            next = request.POST.get("next", "/")
            if lform.is_valid():
                login(request, lform.get_user())
                return HttpResponseRedirect(next)
        else:
            lform = loginForm()
            next = request.GET.get("next", "/grupos/")
        return render(request, "admin.html", {"lform": lform,
                                               "next": next})
    return HttpResponseRedirect(request.GET.get("next", "/grupos/"))


def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse("loginView"))


@login_required(login_url="/login")
def cambiarclave(request, user, rol):
    if request.user.profile.rol == 1 and \
                    rol in ["usuarios", "docentes"]:
        u = get_object_or_404(User, pk=user)

        if request.method == 'POST':
            apcform = AdminPasswordChangeForm(data=request.POST, user=u)
            if apcform.is_valid():
                apcform.save()
                if rol == "usuarios":
                    return HttpResponseRedirect(reverse("usuariosVerView"))
                else:
                    return HttpResponseRedirect(reverse("docentesVerView"))
        else:
            apcform = AdminPasswordChangeForm(user=u)
        return render(request, "changepass.html", { "apcform": apcform, "payload": u })
    raise Http404