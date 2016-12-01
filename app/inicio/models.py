from django.contrib.auth.models import User
from django.db import models
from random import randint


class Profile(models.Model):
    def ImageProfile(self, filename):
        return "media/img/usuarios/%s-%s" % (randint(99999, 999999), filename)

    roles = ((1, "Administrador"), (2, "Docente"), (3, "Acudiente"),)

    rol = models.IntegerField(choices=roles)
    # cedula = models.CharField(max_length=144)
    telefono = models.CharField(max_length=15)
    direccion = models.CharField(max_length=144)

    # otros atributos requeridos
    foto = models.ImageField(upload_to=ImageProfile,
                             default="media/img/usuarios/adefault.png")
    facebook = models.CharField(max_length=144,
                                blank=True, null=True)
    twitter = models.CharField(max_length=144,
                               blank=True, null=True)

    user = models.OneToOneField(User)

    class Meta:
        db_table = 'profile'

    def __str__(self):
        return self.user.first_name


class Categorias(models.Model):
    tipo = models.IntegerField(choices=(
        (1, "Grupo"),
        (2, "Electiva"),
    ))
    categoria = models.CharField(max_length=144)

    class Meta:
        db_table = 'categorias'

    def __str__(self):
        return self.categoria


class Contenido(models.Model):
    fecha = models.DateTimeField(auto_now=True)
    titulo = models.CharField(max_length=144)
    grupo = models.ForeignKey(Categorias)
    contenido = models.TextField(blank=True)
    autor = models.ForeignKey(Profile)
    class Meta:
        db_table = 'contenido'

    def __str__(self):
        return self.titulo


class Megusta(models.Model):
    user = models.ForeignKey(Profile)
    contenido = models.ForeignKey(Contenido)
    class Meta:
        db_table = 'me_gusta'


class Galeria(models.Model):
    def uploadImg(self, filename):
        return "media/image/%s" % filename

    imagen = models.ImageField(upload_to=uploadImg)
    contenido = models.ForeignKey(Contenido)

    class Meta:
        db_table = 'galeria'

    def __str__(self):
        return str(self.imagen)


class Docentes(models.Model):
    user = models.OneToOneField(User)
    categorias = models.ManyToManyField(Categorias)
    class Meta:
        db_table = 'docentes'


class Estudiantes(models.Model):
    estudiante = models.CharField(max_length=144)
    categoria = models.ForeignKey(Categorias)
    electivas = models.ManyToManyField(Categorias,
                                       related_name="eleconcate")
    acudiente = models.ForeignKey(Profile)

    class Meta:
        db_table = 'estudiantes'

    def __str__(self):
        return self.estudiante


class Notificaciones(models.Model):
    fechayhora = models.DateTimeField(auto_now=True)
    contenido = models.TextField()
    categoria = models.ForeignKey(Categorias)
    estudiantes = models.ManyToManyField(Estudiantes)
    remitente = models.ForeignKey(Profile)

    class Meta:
        db_table = 'notificaciones'


class Tokens(models.Model):
    device = models.CharField(max_length=144)
    plataforma = models.IntegerField(choices=(
        (1, "Android"),
        (2, "iOS"),
    ))
    token = models.CharField(max_length=244)
    acudiente = models.ForeignKey(Profile)

    class Meta:
        db_table = 'tokens'


class Institucional(models.Model):
    colegio = models.CharField(max_length=144)
    direccion = models.CharField(max_length=144)
    telefono = models.IntegerField()
    horarios = models.TextField()
    ciudad = models.CharField(max_length=144)
    email = models.EmailField()
    facebook = models.CharField(max_length=144)
    twitter = models.CharField(max_length=144)

    class Meta:
        db_table = 'institucional'
