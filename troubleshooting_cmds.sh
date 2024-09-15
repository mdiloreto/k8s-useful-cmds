# Describe a node and get detailed information on resource usage
kubectl describe node <node-name>

# Inspect init container logs to understand startup issues
kubectl logs <pod-name> -c <init-container-name> --previous

# Debug service connectivity by forwarding ports
kubectl port-forward svc/<service-name> <local-port>:<service-port>

# Stream and save pod logs locally for detailed analysis
kubectl logs -f <pod-name> > local-output.log

# Access raw internal data by querying the kubelet or API server
kubectl get --raw "/api/v1/nodes"
