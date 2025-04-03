#!/bin/bash
docker build -t task2 .
echo Hyyy
docker login -u vimal2004 -p 22ISR059@
docker tag task2 vimal2004/devops
docker push vimal2004/devops
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
