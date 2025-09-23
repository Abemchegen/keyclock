# Use official Keycloak image
FROM quay.io/keycloak/keycloak:26.3.3

# Expose port (Render will map it to $PORT)
EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

# Run Keycloak, binding to Render’s dynamic por
CMD ["start", "--http-enabled=true", "--http-port=8080", "--cache=local", "--proxy-headers=xforwarded","--verbose"]