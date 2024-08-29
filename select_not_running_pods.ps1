#all pendings
kubectl get pods --all-namespaces -o wide | Select-String -Pattern "pending"
