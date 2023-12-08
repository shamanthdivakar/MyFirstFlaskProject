FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN myfirstflaskproject create-db
RUN myfirstflaskproject populate-db
RUN myfirstflaskproject add-user -u admin -p admin
EXPOSE 5000
CMD ["myfirstflaskproject", "run"]
