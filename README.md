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

You may have to slightly modify `kub_common`, `kub_node` and `kub_master` scripts too, but
good news is - you just need to modify fqdn hostnames and ip there.


# DNS

The fqdns specified in these files should be resolvable.
You can configure them in `/etc/hosts` of host machine. I
am using `pi-hole` on my raspberry pi, so I chose to define them there. But anything works.


# Bring the kubernetes cluster

If everything is configured correctly you can bring the cluster up by running following command.

```
# Also ensure other shell scripts from checkout are executable
~> chmod u+x kmanager
~> ./kmanager up
```

# Debugging and help

The scripts also have some helper stuff for debugging and
