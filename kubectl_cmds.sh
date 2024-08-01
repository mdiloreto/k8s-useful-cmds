# get all pods in node
kubectl get pods --all-namespaces --field-selector spec.nodeName=node-name

# get performance of the nodes 
kubectl top nodes
