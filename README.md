# Claro/Oscuro

Script que cambia el entorno entre claro y oscuro.
Al agregar el ejecutable al crontab permite cambiar automaticamente a las horas indicadas en el archivo de configuracion.
Tambie se puede agragar a las aplicaciones de arranque del sistema y permitira cambiar el entorno segun la hora del dia.

## Comenzando 🚀

**Modo general**

Para arrancar el script considerando las horas del dia ejecute el siguinete comando:
```
$ sh /ruta_al_script/autotheme/init.sh
```
_Ejemplo:_
```
$ sh /home/usuario/autotheme/init.sh
```
**Modo Claro**

Para ejecutar el modo claro, utilizar el siguiente comando:
```
$ sh /ruta_al_script/autotheme/light.sh
```
_Ejemplo:_
```
$ sh /home/usuario/autotheme/light.sh
```
**Modo Oscuro**

Para ejecutar el modo oscuro, utilizar el siguiente comando:

```
$ sh /ruta_al_script/autotheme/dark.sh
```
_Ejemplo:_

```
$ sh /home/usuario/autotheme/dark.sh
```

Mira **Deployment** para conocer como desplegar el proyecto.


### Pre-requisitos 📋

_El script esta escrito para elementary os, no se garantiza su utilidad en otras distribuciones de linux, sin embargo es posible que funcione._

_Esta especificado para gtk3 y plank dock_

_Para su correcto funcionamiento realize los siguinetes pasos:_

1. Copie los temas ubicados en el directorio: autotheme/gtk-themes/ en el directorio: /usr/share/themes/ de la siguiente manera:

```
cp -R /ruta_al_script/autotheme/gtk-themes/light /usr/share/themes/
cp -R /ruta_al_script/autotheme/gtk-themes/dark /usr/share/themes/
```

2. 

```
Da un ejemplo
```

### Instalación 🔧

_Una serie de ejemplos paso a paso que te dice lo que debes ejecutar para tener un entorno de desarrollo ejecutandose_

_Dí cómo será ese paso_

```
Da un ejemplo
```

_Y repite_

```
hasta finalizar
```

_Finaliza con un ejemplo de cómo obtener datos del sistema o como usarlos para una pequeña demo_

## Ejecutando las pruebas ⚙️

_Explica como ejecutar las pruebas automatizadas para este sistema_

### Analice las pruebas end-to-end 🔩

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

### Y las pruebas de estilo de codificación ⌨️

_Explica que verifican estas pruebas y por qué_

```
Da un ejemplo
```

## Despliegue 📦

_Agrega notas adicionales sobre como hacer deploy_

## Construido con 🛠️

_Menciona las herramientas que utilizaste para crear tu proyecto_

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - El framework web usado
* [Maven](https://maven.apache.org/) - Manejador de dependencias
* [ROME](https://rometools.github.io/rome/) - Usado para generar RSS

## Contribuyendo 🖇️

Por favor lee el [CONTRIBUTING.md](https://gist.github.com/villanuevand/xxxxxx) para detalles de nuestro código de conducta, y el proceso para enviarnos pull requests.

## Wiki 📖

Puedes encontrar mucho más de cómo utilizar este proyecto en nuestra [Wiki](https://github.com/tu/proyecto/wiki)

## Versionado 📌

Usamos [SemVer](http://semver.org/) para el versionado. Para todas las versiones disponibles, mira los [tags en este repositorio](https://github.com/tu/proyecto/tags).

## Autores ✒️

_Menciona a todos aquellos que ayudaron a levantar el proyecto desde sus inicios_

* **Andrés Villanueva** - *Trabajo Inicial* - [villanuevand](https://github.com/villanuevand)
* **Fulanito Detal** - *Documentación* - [fulanitodetal](#fulanito-de-tal)

También puedes mirar la lista de todos los [contribuyentes](https://github.com/your/project/contributors) quíenes han participado en este proyecto. 

## Licencia 📄

Este proyecto está bajo la Licencia (Tu Licencia) - mira el archivo [LICENSE.md](LICENSE.md) para detalles

## Expresiones de Gratitud 🎁

* Comenta a otros sobre este proyecto 📢
* Invita una cerveza 🍺 o un café ☕ a alguien del equipo. 
* Da las gracias públicamente 🤓.
* etc.



---
⌨️ con ❤️ por [Villanuevand](https://github.com/Villanuevand) 😊