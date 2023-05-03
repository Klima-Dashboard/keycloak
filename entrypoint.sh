#!/bin/bash

export KEYCLOAK_ADMIN_PASSWORD=$(cat /run/secrets/keycloak-admin-password) 
export KC_DB_PASSWORD=$(cat /run/secrets/postgres-password)
./opt/keycloak/bin/kc.sh start --proxy=edge --optimized