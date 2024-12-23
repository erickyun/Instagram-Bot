#!/bin/sh

curl -o /app/.env -L $ACCS
instabotenv/bin/activate && python main.py
