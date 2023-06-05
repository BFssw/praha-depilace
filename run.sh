#!/bin/bash
echo -e "135256785\n" | sudo -S docker build -t localhost:32000/depilace-v-praze:latest .
echo -e "135256785\n" | sudo -S docker push localhost:32000/depilace-v-praze:latest
echo -e "135256785\n" | sudo -S microk8s kubectl rollout restart -n instalater24 deployment depilace-v-praze