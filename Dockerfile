FROM ubuntu:20.04
# Use Python
FROM python:3.9-slim
# Use a base image
FROM debian:bullseye-slim

# Update package list and install curl
RUN apt-get update && apt-get install -y curl

# Clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install virtualenv if not already available
RUN apt-get update && apt-get install -y python3-venv

RUN pip install schedule

WORKDIR /app
RUN chmod 777 /app

RUN python3 -m venv instabotenv

COPY requirements.txt .
RUN instabotenv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
