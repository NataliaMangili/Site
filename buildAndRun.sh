#!/bin/sh
mvn clean package && docker build -t net.codejava/TemosVagas .
docker rm -f TemosVagas || true && docker run -d -p 9080:9080 -p 9443:9443 --name TemosVagas net.codejava/TemosVagas