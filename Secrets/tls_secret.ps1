kubectl delete secret <secret-name> -n <namespace-name>
kubectl create secret tls <secret-name> --cert="path\to\cert" --key="path\to\key"

## Export and decode existing tls secret values 

$certData = (kubectl get secret <secret-name> -n <namespace> -o jsonpath='{.data.tls\.key}' | Out-String).Trim()
[System.IO.File]::WriteAllBytes("tls.key", [System.Convert]::FromBase64String($certData))

$certData = (kubectl get secret <secret-name> -n <namespace> -o jsonpath='{.data.tls.crt}' | Out-String).Trim()
[System.IO.File]::WriteAllBytes("tls.crt", [System.Convert]::FromBase64String($certData))

