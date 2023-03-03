# Docker + Python
## Creamos un contenedor sencillo de Python
```docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3 python your-daemon-or-script.py```

`docker` --> es el comando base de docker  
`run` --> crea el contenedor  
`-it` --> Dos opciones que valen para interactuar con la terminal del contenedor  
`--rm` --> Borra el contenedor cuando lo termina de usar  
`-v` --> define el volumen a continuacion
- `"PWD"` --> el directorio donde estamos
- `usr/src/myapp` --> directorio del contenedor  

`-w` --> El directorio del trabajo  
`python:3` --> Imagen de la que se creara el contenedor  
`python script.py` --> Contenido para ejecutar en el contenedor

# Imagen Docker
Imagen personalizada con libreria externa

---

Para crear una imagen usamos el fichero Dockerfile

Para construirla usamos el comando:

`$ docker build -t youtubeimagen:latest .`

Antes tenemos que descargar la imagen base, en nuestro caso la de python:3

`$ docker pull python:3`

Una vez creada la imagen podemos usarla para lanzar el contenedor

`$ docker run --rm -it youtubeimagen`

El dockerfile se vería de la siguiente forma:

``` 
FROM python:3

WORKDIR /usr/src/app

RUN pip install pytube

COPY ./app /usr/src/app

CMD ["python","./miscript.py"] 
```

---

## Dependencias
Usamos la instrucción [`pyreqs`](https://pypi.org/project/pipreqs/) para crear el fichero `requirements.txt`. Este fichero contendrá todas las librerias que use nuestro script.

`$ pipreqs --force`

En el Dockerfile podemos incluir la instalación de las librerias:

`COPY requirements.txt ./`
`RUN pip install --no-cache-dir -r requirements.txt`

## Docker hub

Una vez tenemos todo creado accedemos a nuestro terminal y ejecutamos la sucesión de estos comandos:

`$ docker login`

`$ docker tag youtubeimagen:latest anuriel/youtubeimage:sxe`

`$ docker push anuriel/youtubeimage:latest`

Donde nos autenticamos con nuestra cuenta de docker hub, posteriormente creamos el tag de nuestra imagen y lo vinculamos al repositorio de nuestra cuenta y finalmente realizamos el push del tag creado a nuestra cuenta y con la imagen seleccionada.

