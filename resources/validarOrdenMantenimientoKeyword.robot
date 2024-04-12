*** Settings ***
Library           SeleniumLibrary
Variables         ../pageObjects/login.yml
Variables         ../pageObjects/menu.yml
Variables         ../pageObjects/tareas.yml
Variables         ../pageObjects/autorizar.yml
Variables         ../pageObjects/validarOrd.yml

*** Keywords ***
Y el usuario quiere seleccionar una orden en estado Validacion dandole click al boton Validación
    Wait Until Element Is Visible    ${locator_button_validacion}
    Click Element    ${locator_button_validacion}

Y el usuario seleciona la opcion de Validacion
    @{rows}=    Get WebElements    ${locator_validacion_page}
    FOR    ${row}    IN    @{rows}
        Click Element    ${row}
    END

