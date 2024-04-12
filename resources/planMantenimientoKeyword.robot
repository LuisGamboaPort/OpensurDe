*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/login.yml
Variables    ../pageObjects/menu.yml
Variables    ../pageObjects/tareas.yml

*** keywords ***
Y luego selecciona la unidad ejecutora
    Wait until element is visible    ${input_unidad_ejecutora}
    Click element    ${input_unidad_ejecutora}
    Input text    ${input_unidad_ejecutora}      Main
    Sleep    2
    Wait until element is visible    ${lista_desplegable}
    Click element    ${primera_opcion_lista_desplegable}