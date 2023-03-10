*Settings*
Documentation               Camada de serviços

Library                     RequestsLibrary

*Variables*
${BASE_URL}                 http://localhost:3333/partners
&{HEADERS}                  Content-Type=application/json
    ...                     auth_user=qa
    ...                     auth_password=ninja

*Keywords*
POST Partner
    [Arguments]             ${payload}

    ${response}             POST                                ${BASE_URL}
    ...                     json=${payload}
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}

GET Partners
    ${response}             GET                                ${BASE_URL}
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}

Search Partner
    [Arguments]             ${name}

    ${query}                Create Dictionary                   name=${name}

    ${response}             GET                                 ${BASE_URL}
    ...                     params=${query}
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}


Enable Partner
    [Arguments]             ${partner_id}

    ${response}             PUT                                ${BASE_URL}/${partner_id}/enable
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}

Disable Partner
    [Arguments]             ${partner_id}

    ${response}             PUT                                ${BASE_URL}/${partner_id}/disable
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}


Delete Partner
    [Arguments]             ${partner_id}

    ${response}             DELETE                                ${BASE_URL}/${partner_id}
    ...                     headers=${HEADERS}
    ...                     expected_status=any

    [Return]                ${response}
