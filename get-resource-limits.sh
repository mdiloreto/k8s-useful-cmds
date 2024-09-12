## Get pods per node: 

kubectl get pods --all-namespaces --field-selector spec.nodeName=gke-tw-amr-usa-prod--tw-amr-usa-prod--bfb9cbb7-eq50 

# Get resource per pod in a node: 

kubectl get pods --all-namespaces --field-selector spec.nodeName=gke-tw-amr-usa-prod--tw-amr-usa-prod--bfb9cbb7-eq50 -o jsonpath="{range .items[*]}{.metadata.namespace}{' '}{.metadata.name}{':\n'}{range .spec.containers[*]}{'  '} {.name}{':\n'}{'    Requests: CPU: '}{.resources.requests.cpu}{', Memory: '}{.resources.requests.memory}{'\n'}{'    Limits:   CPU: '}{.resources.limits.cpu}{', Memory: '}{.resources.limits.memory}{'\n'}{end}{end}"

## Get resource requeriments 
kubectl describe nodes
