# Stor2 Root Cause Analysis

- [Stor2 Root Cause Analysis](#stor2-root-cause-analysis)
  - [Introduction](#introduction)
  - [Array information](#array-information)
  - [Performance notes](#performance-notes)
    - [hdparm](#hdparm)
  - [My laptop for comparison](#my-laptop-for-comparison)
  - [Possible solution](#possible-solution)



## Introduction 

## Array information


root@pfv-stor2:~# zpool list -v rackrental|grep sd|awk '{print $1}'|sed -e 's/[0-9]//g'
sdb
sdd
sdc
sdf
sdg
sde


## Performance notes

### hdparm

root@pfv-stor2:~# hdparm -tT /dev/sdb

/dev/sdb:
 Timing cached reads:   11244 MB in  1.99 seconds = 5638.34 MB/sec
 Timing buffered disk reads: 140 MB in  3.00 seconds =  46.60 MB/sec
root@pfv-stor2:~#

/dev/sdd:
 Timing cached reads:   10952 MB in  1.99 seconds = 5493.70 MB/sec
 Timing buffered disk reads: 154 MB in  3.04 seconds =  50.65 MB/sec

/dev/sdc:
 Timing cached reads:   10178 MB in  1.99 seconds = 5102.24 MB/sec
 Timing buffered disk reads: 164 MB in  3.06 seconds =  53.52 MB/sec

/dev/sdf:
 Timing cached reads:   11340 MB in  1.99 seconds = 5686.37 MB/sec
 Timing buffered disk reads: 142 MB in  3.12 seconds =  45.55 MB/sec


/dev/sdg:
 Timing cached reads:   9248 MB in  2.00 seconds = 4634.64 MB/sec
 Timing buffered disk reads:  18 MB in  3.27 seconds =   5.50 MB/sec


/dev/sde:
 Timing cached reads:   9976 MB in  1.99 seconds = 5001.87 MB/sec
 Timing buffered disk reads:  44 MB in  3.08 seconds =  14.30 MB/sec





## My laptop for comparison

C:\Windows\system32>winsat disk -drive c
Windows System Assessment Tool
> Running: Feature Enumeration ''
> Run Time 00:00:00.00
> Running: Storage Assessment '-drive c -ran -read'
> Run Time 00:00:00.70
> Running: Storage Assessment '-drive c -seq -read'
> Run Time 00:00:02.20
> Running: Storage Assessment '-drive c -seq -write'
> Run Time 00:00:01.89
> Running: Storage Assessment '-drive c -flush -seq'
> Run Time 00:00:00.53
> Running: Storage Assessment '-drive c -flush -ran'
> Run Time 00:00:00.50
> Dshow Video Encode Time                      0.00000 s
> Dshow Video Decode Time                      0.00000 s
> Media Foundation Decode Time                 0.00000 s
> Disk  Random 16.0 Read                       404.52 MB/s          8.2
> Disk  Sequential 64.0 Read                   516.71 MB/s          8.1
> Disk  Sequential 64.0 Write                  489.50 MB/s          8.1
> Average Read Time with Sequential Writes     0.218 ms          8.6
> Latency: 95th Percentile                     0.476 ms          8.7
> Latency: Maximum                             4.490 ms          8.6
> Average Read Time with Random Writes         0.239 ms          8.8
> Total Run Time 00:00:05.98

C:\Windows\system32>winsat disk -drive d
Windows System Assessment Tool
> Running: Feature Enumeration ''
> Run Time 00:00:00.00
> Running: Storage Assessment '-drive d -ran -read'
> Run Time 00:00:00.19
> Running: Storage Assessment '-drive d -seq -read'
> Run Time 00:00:01.70
> Running: Storage Assessment '-drive d -seq -write'
> Run Time 00:00:01.09
> Running: Storage Assessment '-drive d -flush -seq'
> Run Time 00:00:00.39
> Running: Storage Assessment '-drive d -flush -ran'
> Run Time 00:00:00.39
> Dshow Video Encode Time                      0.00000 s
> Dshow Video Decode Time                      0.00000 s
> Media Foundation Decode Time                 0.00000 s
> Disk  Random 16.0 Read                       635.27 MB/s          8.4
> Disk  Sequential 64.0 Read                   3219.62 MB/s          9.3
> Disk  Sequential 64.0 Write                  2230.19 MB/s          9.1
> Average Read Time with Sequential Writes     0.074 ms          8.9
> Latency: 95th Percentile                     0.443 ms          8.7
> Latency: Maximum                             0.821 ms          8.9
> Average Read Time with Random Writes         0.104 ms          8.9
> Total Run Time 00:00:03.89

C:\Windows\system32>

root@pfv-stor2:~# ioping -c 10 /mnt/rackrental
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=1 time=9.31 us (warmup)
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=2 time=27.1 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=3 time=20.1 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=4 time=31.2 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=5 time=22.5 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=6 time=35.0 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=7 time=33.2 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=8 time=29.5 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=9 time=24.8 us
4 KiB <<< /mnt/rackrental (zfs rackrental 1.55 TiB): request=10 time=22.9 us

--- /mnt/rackrental (zfs rackrental 1.55 TiB) ioping statistics ---
9 requests completed in 246.3 us, 36 KiB read, 36.5 k iops, 142.7 MiB/s
generated 10 requests in 9.00 s, 40 KiB, 1 iops, 4.44 KiB/s
min/avg/max/mdev = 20.1 us / 27.4 us / 35.0 us / 4.87 us

## Possible solution

https://blog.westerndigital.com/wd-red-nas-drives/

For Users with Workload-intensive Applications and ZFS: CMR

The explosion of data seen today has spawned a spectrum of NAS uses cases, as well as increasingly demanding applications. One of those includes use of ZFS, an enterprise-grade file system. The increased amount of sustained random writes during ZFS resilvering (similar to a rebuild) causes a lack of idle time for DMSMR drives to execute internal data management tasks, resulting in significantly lower performance reported by users. While we work with iXsystems on DMSMR solutions for lower-workload ZFS customers, we currently recommend our CMR-based WD Red drives, including WD Red Pro and the forthcoming WD Red Plus.