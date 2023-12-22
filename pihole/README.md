# Pi-hole

This is the ad blocker.

## Get started

To begin using the ad blocker, follow the steps below:

1. Make the `start-pihole.sh` script executable

   ```
   $ chmod u+x start-pihole.sh
   ```

2. Start Pi-hole

   ```
   $ ./start-pihole.sh
   ```

You should now be able to see the Pi-hole containe running.

Check it with `docker container ls`.

## Blacklist items to review

Items that are suspected to be hosting adverts and need further testing.

### YouTube

```
rr1---sn-cu-cgne.googlevideo.com
rr1---sn-aigl6nsr.googlevideo.com
rr2---sn-cu-cgne.googlevideo.com
rr2---sn-cu-auod.googlevideo.com
rr3---sn-cu-cgnl.googlevideo.com
rr4---sn-cu-auod.googlevideo.com
rr4---sn-cu-cgne.googlevideo.com
rr5---sn-cu-cgne.googlevideo.com
rr5---sn-cu-cgnl.googlevideo.com
ak-jos-c4assets-com.akamaized.net
```

### Channel 4

```
cdn.http.anno.channel4.com
fvc-p06.channel4.com
ingest-euir.inf.videologygroup.com
2a7e9.v.fwmrm.net
cf.jos.c4assets.com
conn-service-eu-03.allawnos.com
trk-euwest.tidaltv.com
```
