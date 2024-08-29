# Get all nodes from the cluster
$nodes = kubectl get nodes -o json | ConvertFrom-Json
# Loop through each node and count pods on it
foreach ($node in $nodes.items) {
    $nodeName = $node.metadata.name
    # Get pods on the current node
    $pods = kubectl get pods --all-namespaces --field-selector=spec.nodeName=$nodeName -o json | ConvertFrom-Json
    $count = 0
    if ($pods.items) {
        $count = $pods.items.Count
    }
    # Output the node name and the count of pods
    Write-Output "Node: $nodeName has $count pods"
}
