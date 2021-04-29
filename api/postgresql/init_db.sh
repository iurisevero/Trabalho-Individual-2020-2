echo "Running init_db.sh"
# o initdb do postgresql cria o banco e define o usuário e a senha
# não é necessário repetir esse processo aqui
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
    ALTER USER myuser CREATEDB;
EOSQL
