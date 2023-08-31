FROM python:bookworm
WORKDIR /code
COPY . .
RUN pip install poetry
RUN poetry install
CMD poetry run python -m manage runserver 0.0.0.0:8000
