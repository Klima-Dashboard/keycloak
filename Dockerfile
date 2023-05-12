FROM quay.io/keycloak/keycloak:21.1
COPY entrypoint.sh /entrypoint.sh
# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
RUN /opt/keycloak/bin/kc.sh build --db=mariadb
ENTRYPOINT ["/entrypoint.sh"]