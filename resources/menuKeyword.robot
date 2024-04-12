*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/login.yml
Variables    ../pageObjects/menu.yml
Variables    ../pageObjects/tareas.yml

*** Keywords ***
Dado que se hace quiere realizar login con el usuario ${tipo_usuario} y el ${password}
    Wait Until Element Is Visible    ${user_input}
    Input Text    ${user_input}    ${tipo_usuario}
    Input Text    ${pwd_input}    ${password}
    Click Element    ${button_login}
    Sleep    5

Y el usuario quiere darle click en el menu hamburguesa
    Click Element      ${menu}


Dado que en el menu el usuario selecciona la opcion Mantenimiento
    Wait until element is visible    ${list_movimiento}
    Click element    ${list_mantenimiento}

Y dentro de Mantenimiento selecciona la opcion Configuracion
    Wait until element is visible    ${list_configuracion}
    Click element    ${list_configuracion}

Y dentro de la opcion Configuracion selecciona la opcion Planificacion
    Wait until element is visible    ${list_planificacion}
    Click element    ${list_planificacion}

Y dentro de la opcion Planificacion selecciona la opcion Tareas
    Wait until element is visible    ${list_tareas}
    Click element    ${list_tareas}
    Wait until element is visible    ${nueva_tarea}


Y dentro de la opcion Configuracion selecciona la opcion Ejecución de Mantenimiento
    Wait until element is visible    ${list_ejecucion_mantenimiento}
    Click element    ${list_ejecucion_mantenimiento}

Y dentro de la opcion Ejecución de Mantenimiento selecciona la opcion Órdenes
    Wait until element is visible    ${list_ejecucion_mantenimiento}
    Click element    ${list_ejecucion_mantenimiento}
    Wait until element is visible    ${list_ordenes}
    Click element    ${list_ordenes}

Y dentro de la opcion Órdenes selecciona la opcion Todas las Órdenes
    Wait until element is visible    ${list_todas_las_ordenes}
    Click element    ${list_todas_las_ordenes}


Y dentro de la opcion Mantenimiento selecciona la opcion Solicitud de Mantenimiento
    Wait until element is visible    ${list_solicitud_mantenimiento}
    Click element    ${list_solicitud_mantenimiento}

Y dentro de la opcion Planificacion selecciona la opcion Subtipos de Mantenimiento
    Wait until element is visible    ${list_subtipos_mantenimiento}
    Click element    ${list_subtipos_mantenimiento}



