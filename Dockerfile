# Usa una imagen base de Python
FROM python:3.10

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requerimientos y la aplicación
COPY requirements.txt requirements.txt
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 (o el puerto en el que escucha tu aplicación)
EXPOSE 5000

# Establece la variable de entorno para Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Comando por defecto para ejecutar la aplicación
CMD ["flask", "run"]
