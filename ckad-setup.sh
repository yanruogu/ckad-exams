#!/bin/bash 

currentDir=`cd $(dirname $0); pwd -P`
baseDir=$(dirname "$currentDir")

# 01 done

# 02 done

# 03
kubectl create ns haddock
kubectl apply -f ${baseDir}/chief-cardinal/limitrange.yaml

# 04

kubectl create ns garfish

# 05 
kubectl create ns goshawk
kubectl apply -f ${baseDir}/goshawk/current-chipmunk-deployment.yaml
kubectl apply -f ${baseDir}/goshawk/chipmunk-service.yaml  

# 06
kubectl create ns quetzal
kubectl apply -f ${baseDir}/daring-moccasin/broker-deployment.yaml

# 07
kubectl create ns ckad00014

# 08 todo
kubectl create ns gorilla
kubectl apply -f ${baseDir}/prompt-escargot/honeybee-deployment.yaml

# 09 done

# 10 done

# 11
kubectl create ns probe-ns
kubectl apply -f ${baseDir}/CKAD00011/probe-demo.yaml

# 12
kubectl apply -f  ${baseDir}/default/probe-http.yaml

# 13
kubectl create ns ckad00015
kubectl apply -f ${baseDir}/CKAD00015/webapp.yaml

# 14
kubectl create ns frontend
kubectl create sa app -n frontend
kubectl apply -f ${baseDir}/frontend/frontend-deployment.yaml

# 15
kubectl create ns ckad00017
kubectl apply -f  ${baseDir}/CKAD00017/ckad00017-deployment.yaml

# 16
kubectl create ns ckad00018
kubectl apply -f ${baseDir}/CKAD00018/access-db.yaml
kubectl apply -f ${baseDir}/CKAD00018/access-front.yaml
kubectl apply -f ${baseDir}/CKAD00018/ckad00018-newpod.yaml
kubectl apply -f ${baseDir}/CKAD00018/db.yaml
kubectl apply -f ${baseDir}/CKAD00018/front.yaml

# 17 todo

# 18 
kubectl apply -f  ${baseDir}/default/deploy-ck8s.yaml

# 19
kubectl create ns cpu-stress
kubectl apply -f  ${baseDir}/cpu-stress/cpu-loader.yaml
kubectl apply -f  ${baseDir}/cpu-stress/redis-test.yaml

# 20 done

