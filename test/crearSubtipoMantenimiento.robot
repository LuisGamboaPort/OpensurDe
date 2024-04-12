*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Resource    ../resources/subtipoMantenimientoKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

***variables ***
${nombre_del_subtipo_de_mantenimiento}      Subtipo Prueba
${recurrente}      recurrente
${maquinaria}      maquinaria
${cantidad_intervalos}      2
${months}      months

*** Test Cases ***
Crear Subtipo de mantenimiento como Responsable PM
    Dado que se hace quiere realizar login con el usuario ${responsable_pm} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de Mantenimiento selecciona la opcion Configuracion
    Y dentro de la opcion Configuracion selecciona la opcion Planificacion
    Y dentro de la opcion Planificacion selecciona la opcion Subtipos de Mantenimiento
    Y el usuario quiere crear una nuevo subtipo dandole click al boton nuevo
    Y luego ingresa el ${nombre_del_subtipo_de_mantenimiento}
    Y el usuario selecciona la opcion ${recurrente} en el tipo
    Y luego selecciona la categoria para el subtipo
    Y luego el usuario ingresa la fecha desde
    Y luego el usuario ingresa la fecha hasta
    Y luego selecciona el activo e ingresa la palabra ${maquinaria}
    Y luego ingresa la ${cantidad_intervalos} en el campo de intervalos
    Y selecciona la unidad de intervalo en ${months}
    Y le click en el icono de guardar
    Y le da click eb el texto Tareas para volver a ver todas las tareas creadas