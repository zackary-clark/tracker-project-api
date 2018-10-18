#!/bin/bash

curl "http://localhost:4741/maxes" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
        "max": {
            "user_id": 2,
            "random": "this should be ignored",
            "date": "'"${DATE}"'",
            "squat1RM": "'"${MAX}"'",
            "bench1RM": "'"${MAX}"'",
            "deadlift1RM": "'"${MAX}"'",
            "press1RM": "'"${MAX}"'"
        }
    }'

echo
