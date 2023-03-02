*Settings*
Documentation               POST /partners

Resource                    ${EXECDIR}/resources/base.robot

*Test Cases*
Should create a new partner

    ${payload}              Create Dictionary
    ...                     name=Pizzas Koi
    ...                     email=contato@koi.com.br
    ...                     whatsapp=21989999999
    ...                     business=Restaurante



    ${filter}               Create Dictionary
    ...                     name=Pizzas Koi

    DeleteOne               ${MONGO_URI}                        ${filter}

    ${response}             POST Partner                         ${payload}

    Status Should Be        201

    ${results}              Find                                ${MONGO_URI}       ${filter}
    
    Should Be Equal         ${response.json()}[partner_id]      ${results}[0][_id]