#!/bin/bash
sudo docker build -t localhost:32000/depilace-v-praze:latest .
sudo docker push localhost:32000/depilace-v-praze:latest
sudo microk8s kubectl rollout restart -n instalater24 deployment depilace-v-praze