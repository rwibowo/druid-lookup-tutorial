#!/bin/bash

# Find node where coordinator service is running

JSON_FILE=$1
curl -X POST -H "Content-Type: application/json" -d @$JSON_FILE "http://localhost:8081/druid/coordinator/v1/lookups/config" -w '\n'
