
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

#PUT https://${iFlow.hostname}/itspaces/api/1.0/workspace/${iFlow.packageRegId}/artifacts/${iFlow.iFlowRegId}?webdav=UPDATE
PUT https://{{API_HOST}}/api/1.0/workspace/56f133c7d3e44befb9984f1fe174b888/artifacts/5c0e69e7ee5b4d5f8acc29c679ab8514?versionhistory=true&webdav=REPORT
Authorization: Bearer {{apikey}}
