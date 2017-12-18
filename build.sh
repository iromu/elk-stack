#!/usr/bin/env bash

docker build --no-cache -t iromu/logstash:latest        ./logstash
docker build -t iromu/kibana:latest          ./kibana
docker build -t iromu/elasticsearch:latest   ./elasticsearch
