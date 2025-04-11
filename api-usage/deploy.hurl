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


# POST https://{{API_HOST}}/api/v1/Deploy{{ARTIFACT_TYPE}}DesigntimeArtifact?Id='%s'&Version='active'
POST https://{{API_HOST}}/api/v1/DeployIntegrationDesigntimeArtifact?Id='Main'&Version='active'
Authorization: Bearer {{apikey}}
