#!/bin/bash

curl "http://localhost:4741/bodyweights/${ID}" \
    --include \
    --request PATCH \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
        "bodyweight": {
            "date": "'"${DATE}"'",
            "weight": "'"${WEIGHT}"'",
            "notes": "'"${NOTE}"'"
        }
    }'

echo
