from rest_framework import serializers

from app.inicio.models import Estudiantes


class estudiantesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Estudiantes
        fields = ('id', 'estudiante', )