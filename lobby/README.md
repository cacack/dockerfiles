# lobby

A hardened dockerized sshd bastion host based on Alpine Linux. Initally based on
code in [chentmin/bastion][].

## Setup

Create an `authorized_keys` file with the public keys to accept connections
from.  Then, create and run the container like so:

```
docker run \
  --name lobby \
  --publish 522:5522 \
  --volume ${PWD}/authorized_keys:/home/bellhop/.ssh/authorized_keys:ro \
  --restart always \
  --detach \
  cacack/lobby
```

## Usage

Using a recent version of openssh which support the `-J` jumphost argument:

```
ssh -J bellhop@bastion.hostname:522 user@destination.hostname
```

## Security

The bastion container has been hardened to minimize the attack surface. All
commands except for what is needed to run ssh/sshd have been removed. `sshd`
runs as a non-privileged user and has been configured based on [hardening
guidelines][].

On the docker host, I perfer to publish on a privileged port as docker runs as
root.

## References

* [chentmin/bastion][]
* [hardening guidelines][]

[hardening guidelines]: https://stribika.github.io/2015/01/04/secure-secure-shell.html
[chentmin/bastion]: https://github.com/chentmin/bastion
