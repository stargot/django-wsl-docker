FROM python:bookworm
RUN pip install poetry
RUN useradd -ms /bin/bash django
USER django
WORKDIR /home/django
COPY . .
RUN poetry install
CMD poetry run daphne -b 0.0.0.0 -p 8000 app.asgi:application
