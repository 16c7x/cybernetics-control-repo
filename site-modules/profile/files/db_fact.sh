#!/bin/bash
# v1.0 - frankie@deepthought.com - initial release.

ifconfig | awk '/inet / && !/127.0.0.1/ {print $2; exit}'
if [[ $ip_address == 10.20.* ]]; then
    echo "db_env: prod" > /etc/facter/facts.d/db_env.yaml
else
    echo "db_env: non-prod" > /etc/facter/facts.d/db_env.yaml
fi