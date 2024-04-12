*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Resource    ../resources/solicitudMantenimientoKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

***variables ***
${nombre_de_la_tarea}

*** Test Cases ***
Crear Orden
    Dado que se hace quiere realizar login con el usuario ${gestor_om} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de la opcion Configuracion selecciona la opcion Ejecución de Mantenimiento
    Y dentro de la opcion Mantenimiento selecciona la opcion Solicitud de Mantenimiento
    Y el usuario quiere crear una nueva solicitud dandole click al boton nuevo
    Y luego ingresa el ${nombre_de_la_tarea}