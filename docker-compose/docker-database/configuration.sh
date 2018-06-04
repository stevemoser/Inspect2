#!/bin/bash
set -x
set -m

/entrypoint.sh couchbase-server &

sleep 15

# Setup
curl -v -X POST http://127.0.0.1:8091/pools/default -d memoryQuota=1024 \
  -d indexMemoryQuota=1024 -d ftsMemoryQuota=512
curl -v http://127.0.0.1:8091/node/controller/setupServices \
  -d services=kv%2Cn1ql%2Cindex%2Cfts
curl -v http://127.0.0.1:8091/settings/web -d port=8091 \
  -d username=Administrator -d password=password
curl -v http://127.0.0.1:8091/settings/indexes -u Administrator:password \
  -d storageMode=memory_optimized

# Create asset360 bucket
curl -v -X POST -u Administrator:password -d 'name=local-db' \
  -d 'ramQuotaMB=512' -d 'authType=none' \
  -d 'proxyPort=11216' "http://localhost:8091/pools/default/buckets"

fg 1
