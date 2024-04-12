*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/subtipos.yml

*** keywords ***

Y el usuario quiere crear una nuevo subtipo dandole click al boton nuevo
    Wait until element is visible    ${nuevo_subtipo}
    Click element    ${nuevo_subtipo}

Y el usuario selecciona la opcion ${tipo} en el tipo
    Select From List By Value    //select[@id='type_0']    "recurrent"

Y luego selecciona la categoria para el subtipo
    Click element    ${input_categoria_subtipo}
    Sleep    2
    Wait until element is visible    ${lista_desplegable}
    Click element    ${primera_opcion_lista_desplegable_subtipo}

Y luego el usuario ingresa la fecha desde
    Wait until element is visible    ${input_fecha_desde}
    Input text      ${input_fecha_desde}      01/01/2024

Y luego el usuario ingresa la fecha hasta
    Wait until element is visible    ${input_fecha_hasta}
    Input text      ${input_fecha_hasta}      31/12/2024

Y luego ingresa la ${cantidad_intervalos} en el campo de intervalos
    Wait until element is visible    ${input_intervalos}
    Input text      ${input_intervalos}      ${cantidad_intervalos}

Y selecciona la unidad de intervalo en ${unidad_intervalo}
    Select From List By Value    ${select_unidad_intervalo}    "months"

