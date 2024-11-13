ARGO_URL=$(kubectl get svc -n argocd|grep argocd-server |grep LoadBalancer | awk  '{print $4}')
ARGO_PWD=$(kubectl get secret argocd-initial-admin-secret -n argocd-initial-admin-secret -o json -n argocd | jq '.data.password'| xargs | base64 -d)
