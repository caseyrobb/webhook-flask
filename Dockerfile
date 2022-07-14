FROM ubi8

MAINTAINER Casey Robb "casey.robb@redhat.com"

RUN dnf update -y && dnf install python3 -y

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m pip install -r requirements.txt

COPY . /app

EXPOSE 5000

#ENTRYPOINT ["python3 /app/app.py"]

CMD ["python3", "-m", "flask", "run"]
