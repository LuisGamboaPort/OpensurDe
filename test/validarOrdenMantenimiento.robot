*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Resource    ../resources/subtipoMantenimientoKeyword.robot
Resource   ../resources/validarOrdenMantenimientoKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

***variables ***


*** Test Cases ***
Validar Orden desde estado 
    Dado que se hace quiere realizar login con el usuario ${responsable_om} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de la opcion Configuracion selecciona la opcion Ejecución de Mantenimiento
    Y dentro de la opcion Ejecución de Mantenimiento selecciona la opcion Órdenes
    Y dentro de la opcion Órdenes selecciona la opcion Todas las Órdenes
    Y el usuario quiere seleccionar una orden en estado Validacion dandole click al boton Validación
    Y el usuario seleciona la opcion de Validacion



