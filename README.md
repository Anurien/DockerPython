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