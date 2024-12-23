#!/bin/sh

curl -o /app/.env -L $ACCS
python3 main.py
