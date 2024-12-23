FROM ubuntu:20.04
FROM python:3.9-slim

# Install virtualenv if not already available
RUN apt-get update && apt-get install -y python3-venv

WORKDIR /app
RUN chmod 777 /app

RUN python3 -m venv instabotenv

COPY requirements.txt .
RUN instabotenv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
