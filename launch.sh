#!/bin/bash

dotenv ruby compile.rb

cd postgresql
docker-compose up -d
cd ..
