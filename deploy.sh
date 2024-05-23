#!/bin/bash

# Navigate to the app directory
cd ~/app

# Ensure all dependencies are installed
pip install -r requirements.txt

# Copy the service file to the systemd directory
sudo cp new-flaskapp.service /etc/systemd/system/new-flaskapp.service

# Reload the systemd daemon to recognize the new service
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable new-flaskapp.service

# Restart the service to apply the latest changes
sudo systemctl restart new-flaskapp.service
