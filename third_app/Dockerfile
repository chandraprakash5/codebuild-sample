FROM python:3
MAINTAINER Declayer "contact@declayer.com"
WORKDIR /app
COPY base_app /app/base_app
COPY third_app /app/third_app
WORKDIR /app/third_app
ENTRYPOINT ["python"]
CMD ["third_app.py"]
