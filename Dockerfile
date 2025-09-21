FROM quay.io/keycloak/keycloak:21.1.1

# Expose default Keycloak port (optional, for clarity)
EXPOSE 8080

# Use the port Render gives via environment variable
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-enabled=true", "--http-port=${PORT}"]
