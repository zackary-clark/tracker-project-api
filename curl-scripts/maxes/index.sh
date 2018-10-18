#!/bin/bash

curl "http://localhost:4741/maxes" \
    --include \
    --request GET \
    --header "Authorization: Token token=${TOKEN}"

echo
