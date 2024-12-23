FROM ubuntu:20.04

WORKDIR /app
RUN chmod 777 /app

RUN python3 -m venv instabotenv

COPY requirements.txt .
RUN instabotenv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
