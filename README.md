# Starting up a local DynamoDb schema

The project consist in two docker services:
 - dynamodb-local: exposes the dynamoDb service
 - init-dynamodb-schema: a sidecar that uses awscli to initialize a table inside the dynamodb-local instance