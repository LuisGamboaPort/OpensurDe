
# Descripción
Para correr los scripts usar el comando
(`robot test`)

Este repositorio contiene el proyecto de demostración de pruebas automatizas de UI de OpenSur  . 
La carpeta tests contiene los placholders hasta el momento
y la carpeta pages contiene las clases o modulos referentes a las paginas web o menus necesarios para cada test de prueba

# Configuración de Python

Puedes correr este demo desde cualquier sistema operativo: Windows, macOS, Linux, etc.

Este demo requiere Python 3.8 o superior. Puedes descargar la última versión de Python desde Python.org.

Este demo también requiere pipenv. Para instalar pipenv, ejecuta pip install pipenv desde la línea de comandos.

También necesitarás un editor/IDE de Python de tu elección. Buenas opciones incluyen PyCharm y Visual Studio Code.

También necesitarás Git para copiar este código de proyecto.

# Configuración del Proyecto

Clona este repositorio.
Ejecuta `pip install -r requirements.txt` para instalar todas las dependencias del proyecto.
Ejecuta `robot test/xxxx.robot` para ejecutar los test que se encuentran en la carpeta test
Crea una rama para tus cambios de código. (Consulta Ramificación del Repositorio abajo.)

# Solución de Problemas de Configuración del Proyecto

Actualiza Python a las últimas versiones. Lo siguiente funciona frecuentemente para mí:
Python 3.12 (`python --version`)
pip buscar (`pip --version`)
pipenv añadir (`pipenv --version`)
Ejecuta pipenv update desde el directorio del proyecto.
Si las actualizaciones no funcionan, intenta forzar la instalación del paquete:

Ejecuta `pipenv install pytest` desde el directorio del proyecto.
Si estos pasos no funcionan en tu proyecto, entonces intenta correr sin pipenv:

Instala los paquetes de Python directamente usando `pip`.
Ejecuta las pruebas directamente usando `python -m pytest`.

# Ramificación del Repositorio

por añadir
