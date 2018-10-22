#!/bin/bash

curl "http://localhost:4741/bodyweights" \
    --include \
    --request GET \
    --header "Authorization: Token token=${TOKEN}"

echo
