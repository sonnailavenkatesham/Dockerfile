FROM mysql:5.7

ENV MYAQL_ALLOW_EMPTY=true \
    MYAQL_DATABASE=cities \
    MYAQL_USER=shipping \
    MYAQL_PASSWORD=RoboShop@1

COPY scripts/* /docker-entrypoint-initdb.d/