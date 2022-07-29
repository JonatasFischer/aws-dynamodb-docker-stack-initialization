#!/bin/bash
cd /scripts/ || exit
echo $(ls)

echo "Creating DynamoDB Music"
export AWS_ACCESS_KEY_ID=XXX
export AWS_SECRET_ACCESS_KEY=XXX
export AWS_DEFAULT_REGION=us-west-2

echo $(aws dynamodb create-table --cli-input-json file://music_table.json --endpoint http://dynamodb-local:8000)

# --> List DynamoDb Tables
echo Listing tables ...
echo $(aws dynamodb list-tables --endpoint http://dynamodb-local:8000)
