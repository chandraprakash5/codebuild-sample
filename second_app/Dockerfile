FROM python:3
MAINTAINER Declayer "contact@declayer.com"
WORKDIR /app
COPY base_app /app/base_app
COPY second_app /app/second_app
WORKDIR /app/second_app
ENTRYPOINT ["python"]
CMD ["second_app.py"]
