from django.contrib.auth.models import User
from rest_framework import serializers

from app.inicio.models import Profile, Institucional, Contenido, Docentes, Categorias

class categoriasSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categorias
        fields = '__all__'


class profileSerializer(serializers.ModelSerializer):
    rol = serializers.SerializerMethodField()

    class Meta:
        model = Profile
        fields = ('foto', 'telefono', 'direccion', 'facebook', 'twitter', 'rol')

    def get_rol(self, obj):
        return obj.get_rol_display()

class meSerializer(serializers.ModelSerializer):
    profile = profileSerializer(read_only=True)

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email', 'profile')


class institucionalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Institucional
        fields = '__all__'


class userListSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', )

class docentesListSerializer(serializers.ModelSerializer):
    posts = serializers.SerializerMethodField()
    user = userListSerializer(read_only=True)
    foto = serializers.SerializerMethodField()

    class Meta:
        model = Docentes
        fields = ('id', 'foto', 'posts', 'user')

    def get_posts(self, obj):
        return obj.user.profile.contenido_set.count()

    def get_foto(self, obj):
        return obj.user.profile.foto.name

class docenteSerializer(serializers.ModelSerializer):
    user = userListSerializer(read_only=True)
    foto = serializers.SerializerMethodField()
    categorias = serializers.StringRelatedField(read_only=True, many=True)
    posts = serializers.SerializerMethodField()
    pushs = serializers.SerializerMethodField()
    estudiantes = serializers.SerializerMethodField()

    class Meta:
        model = Docentes
        fields = ('foto', 'user', 'categorias', 'posts', 'pushs', 'estudiantes', )

    def get_foto(self, obj):
        return obj.user.profile.foto.name

    def get_posts(self, obj):
        return obj.user.profile.contenido_set.count()

    def get_estudiantes(self, obj):
        return sum([(pl.estudiantes_set.count()) for pl in obj.categorias.all()])

    def get_pushs(self, obj):
        return obj.user.profile.notificaciones_set.count()


class contenidoListSerializer(serializers.ModelSerializer):
    autor = serializers.SerializerMethodField()
    megusta = serializers.SerializerMethodField()
    imagen = serializers.SerializerMethodField()
    like = serializers.SerializerMethodField()

    class Meta:
        model = Contenido
        fields = ('id','autor', 'fecha', 'titulo', 'megusta', 'like', 'imagen', )

    def get_autor(self, obj):
        return obj.autor.user.get_full_name()

    def get_megusta(self, obj):
        return obj.megusta_set.count()

    def get_like(self, obj):
        try:
            obj.megusta_set.get(user=self.context["request"].user.profile)
            return True
        except:
            return False

    def get_imagen(self, obj):
        payload = obj.galeria_set.first()
        if payload is None:
            return None
        return payload.imagen.name



class contenidoSerializer(serializers.ModelSerializer):
    autor = serializers.SerializerMethodField()
    grupo = serializers.SerializerMethodField()
    galeria_set = serializers.StringRelatedField(read_only=True, many=True)
    megusta = serializers.SerializerMethodField()
    like = serializers.SerializerMethodField()

    class Meta:
        model = Contenido
        fields = ('fecha', 'titulo', 'grupo', 'contenido', 'autor', 'galeria_set', 'megusta', 'like', )

    def get_autor(self, obj):
        return obj.autor.user.get_full_name()

    def get_grupo(self, obj):
        return obj.grupo.categoria

    def get_megusta(self, obj):
        return obj.megusta_set.count()

    def get_like(self, obj):
        try:
            obj.megusta_set.get(user=self.context["request"].user.profile)
            return True
        except:
            return False


