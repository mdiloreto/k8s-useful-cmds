resource.type="gke_cluster" OR resource.type="gke_nodepool"
protoPayload.metadata.operationType=~"(UPDATE_CLUSTER|UPGRADE_MASTER)" OR protoPayload.metadata.operationType="UPGRADE_NODES"
resource.labels.cluster_name="<Cluster-Name>"
