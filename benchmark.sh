#!/bin/bash

[[ -z $TARGET ]] && TARGET="${1:-http://localhost:8080/}"
[[ -z $DURATION ]] && DURATION="${2:-5s}"
[[ -z $RATE ]] && RATE="${3:-10}"
[[ -z $TIMEOUT ]] && TIMEOUT="${4:-10s}"
[[ -z $REPORTER ]] && REPORTER="${5:-json}"

echo "GET ${TARGET}" | /go/bin/vegeta attack -duration=${DURATION} -rate=${RATE} -timeout=${TIMEOUT} | /go/bin/vegeta report -reporter=${REPORTER} -output=vegeta.log
