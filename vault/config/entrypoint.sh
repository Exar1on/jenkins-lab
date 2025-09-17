#!/bin/sh
apk add ca-certificates
mkdir -p /usr/local/share/ca-certificates
cp /secrets/config/ca.crt /usr/local/share/ca-certificates
update-ca-certificates
echo $VAULT_SECRET_ID > /secrets/config/secret_id
echo $VAULT_ROLE_ID > /secrets/config/role_id
vault agent -config=/secrets/config/agent_conf.hcl
