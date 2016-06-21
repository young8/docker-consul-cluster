#!/bin/bash
if [ -z "$ENVIRONMENT" ]; then
    ENV=staging
else
    ENV=production
fi

set -e
cd /etc/consul
exec consul agent -config-file=/etc/consul.json -config-dir=/etc/consul/
