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

GET https://{{API_HOST}}/api/v1/ServiceEndpoints?filter=Name%20eq%20'Main'
Accept: application/json
Authorization: Bearer {{apikey}}
