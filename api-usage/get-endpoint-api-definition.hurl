
POST https://{{OAUTH_HOST}}/oauth/token
[FormParams]
grant_type: client_credentials
client_id: {{OAUTH_CLIENT_ID}}
client_secret: {{OAUTH_CLIENT_SECRET}}

HTTP 200
[Asserts]
header "Content-Type" contains "json"

[Captures]
apikey: jsonpath "$['access_token']"

# DONT WORK
GET https://{{API_HOST}}/api/v1/ServiceEndpoints('Main%24endpointAddress%3DHelloWorldMainEntrypoint')/ApiDefinitions
Authorization: Bearer {{apikey}}
