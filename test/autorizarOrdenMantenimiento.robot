*** Settings ***
Library         SeleniumLibrary
Variables       ../properties.yml
Resource    ../resources/menuKeyword.robot
Resource    ../resources/tareaKeyword.robot
Resource    ../resources/solicitudMantenimientoKeyword.robot
Resource    ../resources/autorizarOrdenMantenimientoKeyword.robot
Test Setup      Setup Test

*** Keywords ***
Setup Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

*** Test Cases ***
Autorizar Orden desde estado A aprobar
    Dado que se hace quiere realizar login con el usuario ${responsable_om} y el ${password}
    Y el usuario quiere darle click en el menu hamburguesa
    Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Y dentro de la opcion Configuracion selecciona la opcion Ejecución de Mantenimiento
    Y dentro de la opcion Ejecución de Mantenimiento selecciona la opcion Órdenes
    Y dentro de la opcion Órdenes selecciona la opcion Todas las Órdenes
    Y el usuario quiere seleccionar una orden en estado A aprobar dandole click al boton AAprobar
    Y le da click a la opcion de la lista A aprobar
    Y le da click al boton de Autorizar




