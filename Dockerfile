FROM quay.io/keycloak/keycloak:21.1.1

# Expose Keycloak port
EXPOSE 8080

# Start Keycloak in production mode with HTTP enabled on port 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-enabled=true", "--http-port=8080"]
