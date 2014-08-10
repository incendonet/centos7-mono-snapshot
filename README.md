centos7-mono-snapshot
=====================

This Dockerfile will build a Docker image based on CentOS 7 with the latest Mono snapshot from http://jenkins.mono-project.com/repo/centos/

For more info on the Mono snapshot, please see:  http://mono-project.com/DistroPackages/Jenkins
Take note in particular of how to set the environment with:

```
. mono-snapshot mono
```

in order to be able to run the `mono` command.
