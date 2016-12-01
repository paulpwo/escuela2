# encoding=utf8
import sys
reload(sys)
sys.setdefaultencoding('utf8')
        
from django.contrib.auth.decorators import login_required
from django.forms.models import BaseModelFormSet
from app.inicio.forms import profileForm, usercreateForm, EstudiantesForm, userchangeForm
from django.shortcuts import render, get_object_or_404
from django.http.response import HttpResponseRedirect,  Http404
from django.core.urlresolvers import reverse
from app.inicio.models import Estudiantes, Profile
from django.forms import modelformset_factory


@login_required(login_url="/login")
def usuariosVerView(request):
    if request.user.profile.rol == 1:
        ps = Profile.objects.filter(rol=3)
        return render(request, "usuarios.html", { "ps": ps })
    raise Http404

import logging
@login_required(login_url="/login")
def usuariosAddView(request):
    if request.user.profile.rol == 1:

        EstuFormSet = modelformset_factory(Estudiantes, form=EstudiantesForm)

        if request.method == 'POST':

            request.POST = request.POST.copy()
            request.POST['email'] = request.POST['username']
            logging.debug(request.POST['email'] )
            logging.debug(request.POST['username'])
            ucform = usercreateForm(request.POST)
            pform = profileForm(request.POST)

            formset = EstuFormSet(request.POST)
            if pform.is_valid() and ucform.is_valid() and formset.is_valid():
                payload = ucform.save()
                # guardamos el perfil del usuario
                rpform = pform.save(commit=False)
                rpform.user_id = payload.id
                rpform.rol = 3 # id rol acudiente
                rpform.save()
                # guardamos los estudiantes
                instances = formset.save(commit=False)

                for instance in instances:
                    instance.acudiente_id = rpform.id
                    instance.save()
                return HttpResponseRedirect(reverse("usuariosVerView"))
        else:
            ucform = usercreateForm()
            pform = profileForm()
            formset = EstuFormSet(queryset=Estudiantes.objects.none())
        return render(request, "usuariosadd.html", { "pform": pform, "ucform": ucform, "formset": formset })
    raise Http404


class BaseFormSetCustom(BaseModelFormSet):
    def __init__(self, *args, **kwargs):
        super(BaseFormSetCustom, self).__init__(*args, **kwargs)
        for form in self.forms:
            form.empty_permitted = False


@login_required(login_url="/login")
def usuariosEditView(request, idpro):
    if request.user.profile.rol == 1:
        pro = get_object_or_404(Profile, id=idpro)
        EstuFormSet = modelformset_factory(Estudiantes,
                                           form=EstudiantesForm,
                                           formset=BaseFormSetCustom,
                                           can_delete=True,
                                           extra=1 if pro.estudiantes_set.count() == 0 else 0)

        if request.method == 'POST':
            ucform = userchangeForm(data=request.POST, instance=pro.user)
            pform = profileForm(data=request.POST, instance=pro)
            formset = EstuFormSet(queryset=Estudiantes.objects.filter(acudiente=pro.id), data=request.POST)

            if ucform.is_valid():
                ucform.save()
            if pform.is_valid():
                rpform = pform.save()
            print(ucform.errors)

            for form in formset:
                if form.is_valid():
                    rform = form.save(commit=False)
                    rform.acudiente_id = pro.id
                    rform.save()
                    form.save_m2m()

            # borramos los estudiantes selecionados
            if formset.is_valid():
                formset.save(commit=False)
                for obj in formset.deleted_objects:
                    obj.delete()

            return HttpResponseRedirect(reverse("usuariosVerView"))
        else:
            formset = EstuFormSet(queryset=Estudiantes.objects.filter(acudiente=pro.id))

            ucform = userchangeForm(instance=pro.user)
            pform = profileForm(instance=pro)
        return render(request, "usuariosadd.html", {"ucform": ucform,
                                                    "pform": pform,
                                                    "formset": formset,
                                                    "modo": "edit"})
    raise Http404
