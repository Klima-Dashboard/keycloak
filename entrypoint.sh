#!/bin/bash

export KEYCLOAK_ADMIN_PASSWORD=$(cat /run/secrets/keycloak-admin-password) 
export DB_PASSWORD=$(cat /run/secrets/postgres-password) 
./opt/keycloak/bin/kc.sh start --hostname=keycloak.klima-daten.de --proxy=edge
