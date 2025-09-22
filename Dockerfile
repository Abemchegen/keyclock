FROM quay.io/keycloak/keycloak:21.1.1

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
