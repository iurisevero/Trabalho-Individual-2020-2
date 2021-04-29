FROM postgres:13.2-alpine
COPY init_db.sh /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*