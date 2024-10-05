# Longhorn
`kubectl port-forward -n longhorn-system services/longhorn-frontend 8000:80`

## Uninstall stuck terminating namespace
`for crd in $(kubectl get crd -o name | grep longhorn); do kubectl patch $crd -p '{"metadata":{"finalizers":[]}}' --type=merge; done;`