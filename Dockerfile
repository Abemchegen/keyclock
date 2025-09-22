# Keycloak 26.x
FROM quay.io/keycloak/keycloak:26.3.3

# Expose the default port (optional)
EXPOSE 8080

# Admin user defaults (can be overridden via Render env vars)
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=adminpassword

# Database configuration (supplied via Render runtime env)
ENV KC_DB=postgres
ENV KC_DB_USERNAME=$KC_DB_USERNAME
ENV KC_DB_PASSWORD=$KC_DB_PASSWORD
ENV KC_DB_URL_HOST=$KC_DB_URL_HOST
ENV KC_DB_URL_PORT=$KC_DB_URL_PORT
ENV KC_DB_URL_DATABASE=$KC_DB_URL_DATABASE

# Hostname / proxy settings
ENV KC_PROXY=edge
ENV KC_HOSTNAME=$KC_HOSTNAME
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_HOSTNAME_DEBUG=$KC_HOSTNAME_DEBUG

# Optional realm import at container start (mount your JSON at /tmp/myrealm.json)
ENV KC_IMPORT_REALM_FILE=/tmp/myrealm.json

# Use shell form ENTRYPOINT so $PORT is evaluated at runtime by Render
ENTRYPOINT ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start-dev --http-port ${PORT:-8080}"]
