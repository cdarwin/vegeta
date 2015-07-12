# Vegeta

This repository only provides a wrapper script to simplify benchmarking using 
[tsenart/vegeta](https://github.com/tsenart/vegeta). The script allows for
setting some vegeta arguments as environment variable while providing some
sane defaults without them.

Next, we just provide a Dockerfile to automate docker image building on the
official [docker hub](https://registry.hub.docker.com/u/perfci/vegeta/)

```shell
luser@lolcathost:~$ docker pull perfci/vegeta
luser@lolcathost:~$ docker run --rm -e TARGET='http://192.168.69.30:4567/' perfci/vegeta
{"latencies":{"mean":1021408126,"50th":1018106068,"95th":1038518296,"99th":1056713431,"max":1074251082},"bytes_in":{"total":600,"mean":12},"bytes_out":{"total":0,"mean":0},"duration":4899999913,"wait":1022247941,"requests":50,"rate":10.204081813827575,"success":1,"status_codes":{"200":50},"errors":[]}
```
