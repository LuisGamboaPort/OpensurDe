*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/login.yml
Variables    ../pageObjects/menu.yml
Variables    ../pageObjects/tareas.yml

*** keywords ***

Y el usuario quiere crear una nueva solicitud dandole click al boton nuevo
    Wait until element is visible    ${nueva_tarea}
    Click element    ${nueva_tarea}