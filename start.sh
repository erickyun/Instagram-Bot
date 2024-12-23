#!/bin/sh

curl -o /app/.env -L $ACCS
source instabotenv/bin/activate
python3 scheduler.py & python main.py
