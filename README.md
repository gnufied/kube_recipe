# Provisioning multinode kubernetes cluster using vagrant and scripts #

These set of shell scripts provision multinode kubernetes cluster
using vagrant and bunch of hand written scripts.

# Provisioning the machines

The entry point of script is `kmanager`. You can modify `$hosts` variable defined in there
and change fqdn hostnames and ip addresses. The master uses public bridged networking with
wifi network (so as I can access it from anywhere) and minion nodes use vagrant's private
networking.

Another place that may need modification is Vagranfile themselves. Currently I am mounting
compiled kubernetes `_output` folder and mounting it inside the VMs. You may want to change
the location on host in which `kubernetes` binaries are found.

You may also want to modify the ip address or bridge interface in `Vagrantfile`.

# Bring the kubernetes cluster

If everything is configured correctly you can bring the cluster up by running following command.

```
~> kmanager up
```
