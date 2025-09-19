#!/bin/bash

SECRET_ID=$(vault write -f --field=secret_id auth/approle/role/jenkins/secret-id)
ROLE_ID=$(vault read --field=role_id auth/approle/role/jenkins/role-id)

cat > .env <<EOF
VAULT_ADDR=https://172.17.0.1:8200
VAULT_ROLE_ID=$ROLE_ID
VAULT_SECRET_ID=$SECRET_ID
JENKINS_URL=http://master:8080
JENKINS_AGENT_NAME=jenkins-dev
EOF

docker compose up --build
