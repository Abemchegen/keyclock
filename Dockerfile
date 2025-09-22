FROM quay.io/keycloak/keycloak:26.3.3

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=${PORT:-8080}", "--proxy=edge"]