#!/bin/bash
if [ -z "$ENVIRONMENT" ]; then
    ENV=staging
else
    ENV=production
fi

set -e
cd /Users/abhishekamralkar/Tools/Consul
exec consul agent -config-file=/Users/abhishekamralkar/Tools/Consul/consul.json -config-dir=/Users/abhishekamralkar/Tools/Consul/
