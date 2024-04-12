*** Settings ***
Library           SeleniumLibrary
Variables         ../pageObjects/login.yml
Variables         ../pageObjects/menu.yml
Variables         ../pageObjects/tareas.yml
Variables         ../pageObjects/autorizar.yml

*** Keywords ***
Y el usuario quiere seleccionar una orden en estado A aprobar dandole click al boton AAprobar
    Wait Until Element Is Visible    ${locator_button_aaprobar}
    Click Element    ${locator_button_aaprobar}

Y le da click a la opcion de la lista A aprobar
    ${rows}=    Get WebElements    ${TABLE_LOCATOR}//tbody/tr[contains(@class, 'o_data_row')]
    FOR    ${row}    IN    @{rows}
        Click Element    ${locator_button_aaprobar}    # Click on the row element
    END
Y le da click al boton de Autorizar
    Wait Until Element Is Visible    ${a_autorizar}
    Click Element    ${a_autorizar}








