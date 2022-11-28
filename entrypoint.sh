#!/bin/bash

export KEYCLOAK_ADMIN_PASSWORD=$(cat /run/secrets/keycloak-admin-password) 
export DB_PASSWORD=$(cat /run/secrets/postgres-password) 
sh /opt/keycload/bin/kc.sh
