FROM quay.io/keycloak/keycloak:26.3.3

EXPOSE 8080
ENV KC_HTTP_PORT=${PORT}

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--proxy=edge"]