FROM python:3.9

WORKDIR /fastapi-app

COPY requirementsAWS.txt .

RUN pip install -r requirementsAWS.txt

COPY ./app ./app

CMD ["python", "./app/main.py"]