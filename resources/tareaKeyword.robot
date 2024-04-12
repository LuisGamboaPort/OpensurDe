*** Settings ***
Library    SeleniumLibrary
Variables    ../pageObjects/login.yml
Variables    ../pageObjects/menu.yml
Variables    ../pageObjects/tareas.yml

*** keywords ***

Y el usuario quiere crear una nueva tarea dandole click al boton nuevo
    Wait until element is visible    ${nueva_tarea}
    Click element    ${nueva_tarea}

Y luego ingresa el ${nombre_de_la_tarea}
    Wait until element is visible    ${input_nombre_tarea}
    Input text    ${input_nombre_tarea}      ${nombre_de_la_tarea}

Y luego selecciona la categoria
    Click element    ${input_categoria}
    Sleep    2
    Wait until element is visible    ${lista_desplegable}
    Click element    ${primera_opcion_lista_desplegable}

Y luego selecciona el activo e ingresa la palabra ${palabra}
    Click element    ${input_activo}
    Input text    ${input_activo}     ${palabra}
    Input text    ${input_activo}     \n

Y luego activa la opcion correctivo
    Click element    ${checkbox_correctivo}

Y luego agrega una linea en la seccion Material
    Click element    ${add_nueva_linea_material}

Y luego selecciona el material la opcion Prueba
    Wait until element is visible    ${input_nombre_material}
    Click element    ${input_nombre_material}
    Input text    ${input_nombre_material}      Prueba
    Sleep    2
    Wait until element is visible    ${lista_desplegable}
    Click element    ${primera_opcion_lista_desplegable}

Y luego ingresa la ${cantidad}
    Input text    ${input_cantidad}      ${cantidad}

Y luego agrega una linea en la seccion Mano de obra
    Click element    ${add_nueva_linea_mano_obra}

Y luego selecciona el perfil de recurso Mecanico en la seccion Mano de obra
    Wait until element is visible    ${input_nombre_mano_obra}
    Click element    ${input_nombre_mano_obra}
    Input text    ${input_nombre_mano_obra}      Mecánico
    Sleep    2
    Wait until element is visible    ${lista_desplegable}
    Click element    ${primera_opcion_lista_desplegable}


Y agrega 4 horas
    Click element    ${input_horas_mano_obra}
    Input text    ${input_cantidad}      4

Y le click en el icono de guardar
    Click element    ${icono_guardar}

Y le da click eb el texto Tareas para volver a ver todas las tareas creadas
    Click element    ${titulo_tareas}
    Wait until element is visible    ${search_box_tareas}