*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

***variables ***
${nombre_de_la_tarea}    Prueba Tarea
${cantidad}    2
${auto_prueba}      Auto Prueba

*** Test Cases ***
Crear tarea como configurador de mantenimiento
    Dado que se hace quiere realizar login con el usuario ${configurador_mantenimiento} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de Mantenimiento selecciona la opcion Configuracion
    Y dentro de la opcion Configuracion selecciona la opcion Planificacion
    Y dentro de la opcion Planificacion selecciona la opcion Tareas
    Y el usuario quiere crear una nueva tarea dandole click al boton nuevo
    Y luego ingresa el ${nombre_de_la_tarea}
    Y luego selecciona la categoria
    Y luego selecciona el activo e ingresa la palabra ${auto_prueba}
    Y luego activa la opcion correctivo
    Y luego agrega una linea en la seccion Material
    Y luego selecciona el material la opcion Prueba
    Y luego ingresa la ${cantidad}
    Y luego agrega una linea en la seccion Mano de obra
    Y luego selecciona el perfil de recurso Mecanico en la seccion Mano de obra
    Y agrega 4 horas
    Y le click en el icono de guardar
    Y le da click eb el texto Tareas para volver a ver todas las tareas creadas