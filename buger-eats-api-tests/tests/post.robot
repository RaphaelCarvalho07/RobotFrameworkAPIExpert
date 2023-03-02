*Settings*
Documentation               POST /partners

Resource                    ${EXECDIR}/resources/base.robot

*Test Cases*
Should create a new partner

    ${payload}              Create Dictionary
    ...                     name=Pizzas Raphilske
    ...                     email=contato@koi.com.br
    ...                     whatsapp=21989999999
    ...                     business=Restaurante

    Remove Partner By Name  Pizzas Raphilske

    ${filter}               Create Dictionary
    ...                     name=Pizzas Raphilske
 
    ${response}             POST Partner                         ${payload}

    Status Should Be        201

    ${results}              Find                                ${MONGO_URI}       ${filter}
    
    Should Be Equal         ${response.json()}[partner_id]      ${results}[0][_id]