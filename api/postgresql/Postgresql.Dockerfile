FROM library/postgres
COPY init_db.sh /docker-entrypoint-initdb.d/