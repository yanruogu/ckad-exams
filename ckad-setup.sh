#!/bin/bash 

currentDir=`cd $(dirname $0); pwd -P`
baseDir=$(dirname "$currentDir")

echo $currentDir
echo $baseDir

# 01 done

# 02 done

# 03
kubectl create ns haddock
kubectl apply -f ${currentDir}/chief-cardinal/limitrange.yaml

# 04

kubectl create ns garfish

# 05 
kubectl create ns goshawk
kubectl apply -f ${currentDir}/goshawk/current-chipmunk-deployment.yaml
kubectl apply -f ${currentDir}/goshawk/chipmunk-service.yaml  

# 06
kubectl create ns quetzal
kubectl apply -f ${currentDir}/daring-moccasin/broker-deployment.yaml

# 07
kubectl create ns ckad00014

# 08 done
kubectl create ns gorilla
kubectl apply -f ${currentDir}/prompt-escargot/honeybee-deployment.yaml

# 09 done

# 10 done

# 11
kubectl create ns probe-ns
kubectl apply -f ${currentDir}/CKAD00011/probe-demo.yaml

# 12
kubectl apply -f  ${currentDir}/default/probe-http.yaml

# 13
kubectl create ns ckad00015
kubectl apply -f ${currentDir}/CKAD00015/webapp.yaml

# 14
kubectl create ns frontend
kubectl create sa app -n frontend
kubectl apply -f ${currentDir}/frontend/frontend-deployment.yaml

# 15
kubectl create ns ckad00017
kubectl apply -f  ${currentDir}/CKAD00017/ckad00017-deployment.yaml

# 16
kubectl create ns ckad00018
kubectl apply -f ${currentDir}/CKAD00018/access-db.yaml
kubectl apply -f ${currentDir}/CKAD00018/access-front.yaml
kubectl apply -f ${currentDir}/CKAD00018/ckad00018-newpod.yaml
kubectl apply -f ${currentDir}/CKAD00018/db.yaml
kubectl apply -f ${currentDir}/CKAD00018/front.yaml

# 17 done

kubectl apply -f ${currentDir}/ambassador/nginx-svc.yaml
kubectl apply -f ${currentDir}/ambassador/poller.yaml



# 18 
kubectl apply -f  ${currentDir}/default/deploy-ck8s.yaml

# 19
kubectl create ns cpu-stress
kubectl apply -f  ${currentDir}/cpu-stress/metrics-server-v0.6.3.yaml
kubectl apply -f  ${currentDir}/cpu-stress/cpu-loader.yaml
kubectl apply -f  ${currentDir}/cpu-stress/redis-test.yaml

# 20 done

