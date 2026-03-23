#!/bin/bash

echo "Starting deploy..."

cd ~/bedrock-woocommerce-docker || exit

echo "Pulling latest code..."
git pull origin main

echo "Rebuilding containers..."
docker-compose down
docker-compose up -d --build

echo "Deploy finished."
