FROM quay.io/keycloak/keycloak:21.1.1

EXPOSE 8080

CMD /bin/sh -c "/opt/keycloak/bin/kc.sh start --http-enabled=true --http-port=$PORT"
