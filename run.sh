#!/bin/bash

CONFIG_FILE=/elasticsearch/config/elasticsearch.yml
ES_CLUSTER_NAME=elasticsearch_docker

sed -i -e "s/#cluster.name: elasticsearch/cluster.name: ${ES_CLUSTER_NAME}/" ${CONFIG_FILE}

start-stop-daemon --exec /elasticsearch/bin/elasticsearch --start
# -- -f
