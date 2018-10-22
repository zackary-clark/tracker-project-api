#!/bin/bash

curl "http://localhost:4741/bodyweights" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
        "bodyweight": {
            "random": "this should be ignored",
            "date": "'"${DATE}"'",
            "weight": "'"${WEIGHT}"'",
            "notes": "'"${NOTE}"'"
        }
    }'

echo
