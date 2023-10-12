FROM python:3.10-alpine

WORKDIR /app
COPY . .
RUN pip3 install fastapi uvicorn requests

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "443", "--ssl-keyfile", "privkey1.pem", "--ssl-certfile", "cert1.pem"]