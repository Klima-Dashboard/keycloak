#!/bin/bash

export KEYCLOAK_ADMIN_PASSWORD=$(cat /run/secrets/michendorf-keycloak-admin-password) 
export KC_DB_PASSWORD=$(cat /run/secrets/michendorf-mariadb-keycloak-password)
./opt/keycloak/bin/kc.sh start --proxy=edge --optimized --spi-connections-jpa-legacy-migration-strategy=update
