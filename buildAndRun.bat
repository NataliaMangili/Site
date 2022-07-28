@echo off
call mvn clean package
call docker build -t net.codejava/TemosVagas .
call docker rm -f TemosVagas
call docker run -d -p 9080:9080 -p 9443:9443 --name TemosVagas net.codejava/TemosVagas