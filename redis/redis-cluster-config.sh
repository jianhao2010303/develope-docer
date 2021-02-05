#!/bin/bash

_ip=$1

for port in `seq 7001 7006`; do \
  mkdir -p ./${port}/conf \
  && PORT=${port} IP=${_ip}  envsubst < ./redis-cluster.tmpl > ./${port}/conf/redis.conf \
  && mkdir -p ./${port}/data; \
done
