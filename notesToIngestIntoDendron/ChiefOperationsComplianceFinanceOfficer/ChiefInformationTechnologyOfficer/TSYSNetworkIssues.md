
# TSYS Network Performance Issues



## Introduction

TSYS Vm performance is sub par. All storage is ZFS exported from NFS 

## Current status


## MTU

```
root@pfv-stor2:/etc/netplan# ping 10.251.30.21 -c 10 -M do -s 1471
PING 10.251.30.21 (10.251.30.21) 1471(1499) bytes of data.
1479 bytes from 10.251.30.21: icmp_seq=1 ttl=64 time=0.220 ms
1479 bytes from 10.251.30.21: icmp_seq=2 ttl=64 time=0.195 ms
1479 bytes from 10.251.30.21: icmp_seq=3 ttl=64 time=0.197 ms
1479 bytes from 10.251.30.21: icmp_seq=4 ttl=64 time=0.206 ms
^C
--- 10.251.30.21 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3073ms
rtt min/avg/max/mdev = 0.195/0.204/0.220/0.009 ms
root@pfv-stor2:/etc/netplan# ping 10.251.30.21 -c 10 -M do -s 1472
PING 10.251.30.21 (10.251.30.21) 1472(1500) bytes of data.
1480 bytes from 10.251.30.21: icmp_seq=1 ttl=64 time=0.224 ms
^C
--- 10.251.30.21 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.224/0.224/0.224/0.000 ms
root@pfv-stor2:/etc/netplan# ping 10.251.30.21 -c 10 -M do -s 1473
PING 10.251.30.21 (10.251.30.21) 1473(1501) bytes of data.
^C
--- 10.251.30.21 ping statistics ---
2 packets transmitted, 0 received, 100% packet loss, time 1029ms
```

## iperf

from vm9 (which is where cloudron lives)

```
root@pfv-vmsrv-09:~# iperf3 -c 10.251.30.22
Connecting to host 10.251.30.22, port 5201
[  5] local 10.251.30.30 port 41594 connected to 10.251.30.22 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   112 MBytes   943 Mbits/sec    9    344 KBytes
[  5]   1.00-2.00   sec   108 MBytes   902 Mbits/sec    4    362 KBytes
[  5]   2.00-3.00   sec   110 MBytes   923 Mbits/sec   37    301 KBytes
[  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec   20    345 KBytes
[  5]   4.00-5.00   sec   110 MBytes   923 Mbits/sec    0    437 KBytes
[  5]   5.00-6.00   sec   108 MBytes   902 Mbits/sec    0    469 KBytes
[  5]   6.00-7.00   sec   109 MBytes   912 Mbits/sec   22    315 KBytes
[  5]   7.00-8.00   sec   104 MBytes   870 Mbits/sec   11    195 KBytes
[  5]   8.00-9.00   sec  97.5 MBytes   818 Mbits/sec   18    313 KBytes
[  5]   9.00-10.00  sec   111 MBytes   933 Mbits/sec   23    216 KBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  1.05 GBytes   906 Mbits/sec  144             sender
[  5]   0.00-10.04  sec  1.05 GBytes   900 Mbits/sec                  receiver

iperf Done.
root@pfv-vmsrv-09:~#

root@pfv-vmsrv-09:~# ifconfig vmbr0
vmbr0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

Accepted connection from 10.251.30.30, port 41580
[  5] local 10.251.30.22 port 5201 connected to 10.251.30.30 port 41594
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   105 MBytes   878 Mbits/sec
[  5]   1.00-2.00   sec   108 MBytes   906 Mbits/sec
[  5]   2.00-3.00   sec   111 MBytes   929 Mbits/sec
[  5]   3.00-4.00   sec   110 MBytes   919 Mbits/sec
[  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec
[  5]   5.00-6.00   sec   106 MBytes   892 Mbits/sec
[  5]   6.00-7.00   sec   110 MBytes   921 Mbits/sec
[  5]   7.00-8.00   sec   104 MBytes   874 Mbits/sec
[  5]   8.00-9.00   sec  97.4 MBytes   817 Mbits/sec
[  5]   9.00-10.00  sec   111 MBytes   932 Mbits/sec
[  5]  10.00-10.04  sec  3.94 MBytes   808 Mbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.04  sec  1.05 GBytes   900 Mbits/sec                  receiver
```

### Array storage performance