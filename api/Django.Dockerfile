FROM python:3
# Setting PYTHONUNBUFFERED to a non empty value ensures that the python output is sent straight to terminal (e.g. your container log) without being first buffered
ENV PYTHONUNBUFFERED=1
WORKDIR /api
# Copy all code files to inside the container
COPY requirements.txt api task manage.py /api/
RUN pip3 install -r requirements.txt && python3 manage.py migrate && python3 manage.py runserver
