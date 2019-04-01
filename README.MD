# Build Druid Docker

To build Docker Image: 
`docker build -t chethanuk/druid .` 
or 
`docker build -t username/druid .` 

![Note] Dont forget to update the docker-compose with appropriate tag

To push to docker hub: `docker push chethanuk/druid`
                or `docker build -t username/druid .`

# Run

To bring postgres, zookeeper, overlord, coordinator, middlemanager, historical, broker up.

Run this: `docker-compose up -d`

Available environment options:

- `DRUID_XMX` '-'
- `DRUID_XMS` '-'
- `DRUID_NEWSIZE` '-'
- `DRUID_MAXNEWSIZE` '-'
- `DRUID_HOSTNAME` '-'
- `DRUID_PORT` '-'
- `DRUID_ZK_HOST` '-'

Tests:

`docker-compose -f docker-compose.test.yml up -d`

`docker-compose -f docker-compose.test.yml down`
