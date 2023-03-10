*Settings*
Documentation                   PUT /partners

Resource                        ${EXECDIR}/resources/base.robot

*Test Cases*
Should enable a partner

    ${partner}                  Factory Enable Partner

    Remove Partner By Name      ${partner}[name]
    ${response}                 POST Partner                        ${partner}

    ${partner_id}               Set Variable                        ${response.json()}[partner_id]

    ${response}                 Enable Partner                      ${partner_id}
    Status Should Be            200

Should return 404 when try enable a inexistent partner

    ${partner}                  Factory 404 Partner

    Remove Partner By Name      ${partner}[name]
    ${response}                 POST Partner                        ${partner}

    ${partner_id}               Set Variable                        ${response.json()}[partner_id]

    Remove Partner By Name      ${partner}[name]
    
    ${response}                 Enable Partner                      ${partner_id}
    Status Should Be            404

