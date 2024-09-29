# Install location
Located at `/etc/rancher/k3s/k3s.yaml`

# LocalPath storage
Located at `/var/lib/rancher/k3s/storage`

# Expose a service
Use the `kubectl expose` command.

This will create a Loadbalancer service

# Included LoadBalancer
`https://docs.k3s.io/networking/networking-services#service-load-balancer`

**[ServiceLB](https://github.com/k3s-io/klipper-lb)**