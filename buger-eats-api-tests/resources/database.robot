*Settings*
Documentation               Database helpers connection

Library                     RobotMongoDBLibrary.Delete
Library                     RobotMongoDBLibrary.Find

*Variables*
&{MONGO_URI}                connection=mongodb+srv://bugereats:0wwPkO37YkmCMFIe@cluster0.pzynr0q.mongodb.net/PartnerDB?retryWrites=true&w=majority    database=PartnerDB   collection=partner

*Keywords*
Remove Partner By Name
    [Arguments]             ${partner_name}

    ${filter}               Create Dictionary
    ...                     name=${partner_name}

    DeleteOne               ${MONGO_URI}                        ${filter}

# Remove Partner By Name
#     [Arguments]             ${partner_name} 

#     ${filter}               Create Dictionary
#     ...                     ${partner_name}

#     DeleteOne               ${MONGO_URI}                        ${filter}
