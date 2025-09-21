# Use official Keycloak image
FROM quay.io/keycloak/keycloak:21.1.1


# Expose default Keycloak port
EXPOSE 8080

# Start Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-port=8080"]
