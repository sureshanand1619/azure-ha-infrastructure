#!/bin/bash

set -e

echo "Getting VM Public IP from Terraform..."

PUBLIC_IP=$(terraform output -raw public_ip_address)

echo "VM Public IP: $PUBLIC_IP"

echo "Waiting for Nginx to become available..."

for i in {1..30}; do

    STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$PUBLIC_IP || true)

    echo "Attempt $i - HTTP Status: $STATUS"

    if [ "$STATUS" = "200" ]; then
        echo "Application is reachable."
        exit 0
    fi

    sleep 20

done

echo "Application failed health check."
exit 1
