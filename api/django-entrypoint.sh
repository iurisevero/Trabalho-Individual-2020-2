echo "Waiting for postgres..."

wget -qO- https://raw.githubusercontent.com/eficode/wait-for/v2.1.1/wait-for | sh -s -- db:5432 -- echo Success

python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000