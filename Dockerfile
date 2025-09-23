# Use official Keycloak image
FROM quay.io/keycloak/keycloak:26.3.3

# Expose port (Render will map it to $PORT)
EXPOSE 8080

# Run Keycloak, binding to Render’s dynamic port
CMD kc.sh start --http-enabled=true --http-port=${PORT} --optimized