# puppet-mongodb module

This module doesn't have nifty features to create mongodb databases and stuff. For the moment it's only used to install mongodb and configures the db.

It needs some refactoring love.

You need to install the [mongodb](http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/) repository from for example:

```bash
   # tee /etc/yum.repos.d/mongodb.repo <<EOF
   [mongodb]
   name=MongoDB Repository
   baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
   gpgcheck=0
   enabled=1
   EOF
```
