#!/bin/sh

curl -o /app/.env -L $ACCS
source instabotenv/bin/activate
python app.py & python main.py
