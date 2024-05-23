#!/bin/bash

# Navigate to the app directory
cd ~/app

# Ensure all dependencies are installed
pip install -r requirements.txt

# Restart the Flask app (assuming you're using gunicorn and systemd)
sudo systemctl restart your-flask-app.service
