echo "Waiting for postgres..."

sleep 0.1

while ! nc -z db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000