#!/bin/bash

dotenv ruby compile.rb

ROOT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $ROOT_PATH

# ./launch.sh postgresql
cd $1
docker-compose up -d
cd $ROOT_PATH
