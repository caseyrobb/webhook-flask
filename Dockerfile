FROM registry.access.redhat.com/ubi8/ubi-minimal

MAINTAINER Casey Robb "casey.robb@redhat.com"

RUN microdnf update -y && microdnf install python3 -y

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m pip install -r requirements.txt

COPY . /app

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
