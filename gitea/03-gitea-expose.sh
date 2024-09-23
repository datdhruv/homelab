# Exposing the service to connect over IP addr
kubectl expose deployment gitea-deploy --type=LoadBalancer --name=gitea-lb