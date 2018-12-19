FROM python:3
MAINTAINER Declayer "contact@declayer.com"
WORKDIR /app
COPY base_app /app/base_app
COPY first_app /app/first_app
WORKDIR /app/first_app
ENTRYPOINT ["python"]
CMD ["first_app.py"]
