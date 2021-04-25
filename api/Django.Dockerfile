FROM python:3
# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output is sent straight to terminal (e.g. your container log) without being first buffered
ENV PYTHONUNBUFFERED=1
WORKDIR /api
# Copy all code files to inside the container
COPY requirements.txt api task manage.py /api/
RUN apt update && \
    apt install -y netcat-openbsd && \
    pip3 install -r requirements.txt

# # Entrypoint to wait db be stable before run
# COPY django-entrypoint.sh /api/
# CMD ["bash", "/api/django-entrypoint.sh"]