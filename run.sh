#!/bin/bash
git clone https://github.com/spring-projects/spring-petclinic.git
docker build -t docker-demo:latest .
docker run --network host docker-demo:latest
echo http://localhost:8080/ 