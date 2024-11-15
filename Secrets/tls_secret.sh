kubectl delete secret <secret-name> -n eyq-chat-persistence-dev
kubectl create secret tls <secret-name> --cert="path\to\cert" --key="path\to\key"

# Extract the private key (tls.key) from the Kubernetes secret
kubectl get secret <secret-name> -n <namespace> -o jsonpath='{.data.tls\.key}' | base64 -d > tls.key

# Extract the certificate (tls.crt) from the Kubernetes secret
kubectl get secret <secret-name> -n <namespace> -o jsonpath='{.data.tls\.crt}' | base64 -d > tls.crt
