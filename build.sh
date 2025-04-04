#!/bin/bash
docker build -t final .
echo Hyyy
docker login -u vimal2004 -p 22ISR059@
docker tag final vimal2004/final_task
docker push vimal2004/final_task
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
