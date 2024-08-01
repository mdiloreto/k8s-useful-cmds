kubectl drain <node-name> --ignore-daemonsets --delete-local-data
kubectl get pods --all-namespaces -o wide
kubectl cordon <node-name>
