*Settings*
Documentation           RabbitNQ Helpers API

*Variables*
${RABBIT_URL}               https://jackal.rmq.cloudamqp.com/api/queues/yignioko/email
${RABBIT_HEADERS}           Content-Type=application/json   Authorization= Basic eWlnbmlva286aVBNbFNlYW1TMWo2RmUta3I5dENGOGpuTWtWOU1jMUs=

*Keywords*  
Purge Messages

    ${payload}              Create Dictionary
    ...                     vhost=yignioko
    ...                     name=email
    ...                     mode=purge

    ${response}             DELETE
    ...                     ${RABBIT_URL}/contents
    ...                     json=${payload}
    ...                     headers=${RABBIT_HEADERS}

    [Return]                ${response}

Get Message

    ${payload}              Create Dictionary
    ...                     vhost=yigniok
    ...                     name=email
    ...                     truncate=50000
    ...                     ackmode=ack_requeue_true
    ...                     encoding=auto
    ...                     count=1

    ${response}             POST
    ...                     ${RABBIT_URL}/get
    ...                     json=${payload}
    ...                     headers=${RABBIT_HEADERS}

    [Return]                ${response}


