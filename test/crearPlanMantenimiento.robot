*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Resource    ../resources/solicitudMantenimientoKeyword.robot
Resource    ../resources/subtipoMantenimientoKeyword.robot
Resource    ../resources/planMantenimientoKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

***variables ***
${nombre_del_plan}      Plan Prueba
${maquinaria}      maquinaria

*** Test Cases ***
Crear plan de mantenimiento con el usuario responsable PM
    Dado que se hace quiere realizar login con el usuario ${responsable_pm} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de Mantenimiento selecciona la opcion Planes de Mantenimiento
    Y dentro de Planes de Mantenimiento selecciona la opcion Plan de Mantenimiento
    Y el usuario quiere crear una nueva solicitud dandole click al boton nuevo
    Y luego ingresa el ${nombre_del_plan}
    Y luego el usuario ingresa la fecha desde
    Y luego el usuario ingresa la fecha hasta
    Y luego selecciona la unidad ejecutora
    Y luego selecciona la categoria
    Y luego selecciona el activo e ingresa la palabra ${maquinaria}
    Y el usuario le da click en el boton En Proceso
    Y deberia volver a la pagina de inicio
