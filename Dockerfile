FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    apt-get install -y python-dev-is-python3
   
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT ["python"]
CMD ["app.py"] 
