#!/bin/bash

ROOT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $ROOT_PATH

# ./launch.sh postgresql
cd $1

# https://github.com/localstack/localstack#using-docker-compose
TMPDIR=/private$TMPDIR docker-compose up -d

cd $ROOT_PATH
