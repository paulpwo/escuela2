from django import forms
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm, UserChangeForm
from django.contrib.auth.models import User
from pyfcm import FCMNotification
from django.conf import settings
push_service = FCMNotification(api_key=settings.FBCM_API_KEY)

from app.inicio.models import Categorias, Profile, Estudiantes, Notificaciones, Institucional, Contenido, Galeria, \
    Docentes, Tokens


class loginForm(AuthenticationForm):
    pass

class usercreateForm(UserCreationForm):
    class Meta:
        model = User
        fields = ("username", "first_name", "last_name", "email", )

class userchangeForm(UserChangeForm):
    class Meta:
        model = User
        exclude = ['username', 'date_joined']

class docentesCreateForm(forms.ModelForm):
    class Meta:
        model = Docentes
        fields = ('categorias',)

class categoriasForm(forms.ModelForm):
    class Meta:
        model = Categorias
        fields = '__all__'


class profileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('telefono', 'direccion', 'foto', )


class EstudiantesForm(forms.ModelForm):
    categoria = forms.ModelChoiceField(queryset=Categorias.objects.filter(tipo=1),
                                       widget=forms.Select(attrs={'class': 'form-control', 'required': 'required'}))
    electivas = forms.ModelMultipleChoiceField(queryset=Categorias.objects.filter(tipo=2),
                                               required=False,
                                               widget=forms.SelectMultiple(attrs={'class': 'form-control'}))

    class Meta:
        model = Estudiantes
        fields = ('estudiante', 'categoria', 'electivas', )
        widgets = {
            'estudiante': forms.TextInput(attrs={'class': 'form-control', 'required': 'required'}),
        }
        labels = {
            'estudiante': 'alumno',
        }

class NotificacionesForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        request = kwargs.pop('request', None)
        super(NotificacionesForm, self).__init__(*args, **kwargs)

        if request is not None:
            if request.user.profile.rol == 2:
                self.fields["categoria"] = forms.ModelChoiceField(queryset=request.user.docentes.categorias.all())

    def send_push(self):
        ts = Tokens.objects.raw('SELECT `tokens`.`id`, `tokens`.`device`, `tokens`.`plataforma`, `tokens`.`token`, `tokens`.`acudiente_id` '\
                                    'FROM `estudiantes` '\
                                    'INNER JOIN `notificaciones_estudiantes` ON (`estudiantes`.`id` = `notificaciones_estudiantes`.`estudiantes_id`) '\
                                    'INNER JOIN `tokens` ON(`tokens`.`acudiente_id` = `estudiantes`.`acudiente_id`) '\
                                    'WHERE `notificaciones_estudiantes`.`notificaciones_id` = {0}'.format(self.noti.id))
        mtokens = [(t.token) for t in ts]
        if len(mtokens) > 0:
            payload = {
                "type": "Notificacion",
                "user_id": self.noti.remitente.user.id,
                "user": self.noti.remitente.user.get_full_name(),
                "foto": self.noti.remitente.user.profile.foto.name,
                "message": self.noti.contenido,
                "priority": "high",
                "content_available": "true",
                "click_action": "OPEN_ACTIVITY_1"
            }
            return push_service.notify_multiple_devices(registration_ids=mtokens, message_body=self.noti.contenido, data_message=payload, sound="default", )

    def save(self, commit=True):
        self.noti = super(NotificacionesForm, self).save(commit=False)
        if commit:
            self.noti.save()
            self.noti.save_m2m()
        return self.noti

    class Meta:
        model = Notificaciones
        fields = ("contenido", "categoria", "estudiantes", )

class InstitucionalForm(forms.ModelForm):
    class Meta:
        model = Institucional
        fields = '__all__'


class ContenidoForm(forms.ModelForm):
    class Meta:
        model = Contenido
        fields = ('titulo','contenido',)


class GaleriaForm(forms.ModelForm):
    class Meta:
        model = Galeria
        fields = ('imagen', 'contenido', )
