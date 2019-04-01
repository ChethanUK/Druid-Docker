# Build Druid Docker
`docker build -t chethanuk/druid .`

`docker push chethanuk/druid`

# Run

`docker-compose -f docker-compose.test.yml up -d`

`docker-compose -f docker-compose.test.yml down`

`docker-compose up -d`

Available environment options:

- `DRUID_XMX` '-'
- `DRUID_XMS` '-'
- `DRUID_NEWSIZE` '-'
- `DRUID_MAXNEWSIZE` '-'
- `DRUID_HOSTNAME` '-'
- `DRUID_PORT` '-'
- `DRUID_ZK_HOST` '-'
