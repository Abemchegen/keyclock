# Use official Keycloak image
FROM quay.io/keycloak/keycloak:26.3.3

# Expose port (Render will map it to $PORT)
EXPOSE 8080

# Health check for Keycloak
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD curl -f http://localhost:${PORT}/ || exit 1

# Entry point for Keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

# Run Keycloak, binding to Render’s dynamic port
CMD ["start", "--http-enabled=true", "--http-port=${PORT}", "--cache=local", "--proxy-headers=xforwarded"]
