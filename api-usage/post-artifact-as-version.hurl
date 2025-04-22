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


POST https://{{API_HOST}}/api/v1/IntegrationDesigntimeArtifactSaveAsVersion?Id='Main'&SaveAsVersion='0.0.11'
Authorization: Bearer {{apikey}}
Accept: application/json
