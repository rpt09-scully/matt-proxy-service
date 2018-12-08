# Reviews Service

> Reviews service for 9 Trails

## Related Projects

  - paths: https://github.com/rpt09-scully/paths-service
  - profiles: https://github.com/rpt09-scully/profile-service
  - photos:  https://github.com/rpt09-scully/trail-photos-service
  - trails: https://github.com/rpt09-scully/trail-service
  - reviews [Current]
## Table of Contents

1. [Usage](#Usage)
1. [Requirements](#requirements)
1. [Development](#development)

## Usage

> we'll get back to you on this;-)

## Requirements

> hmmmm...

## Development

To set up:

```sh
# cd into directory
$> cd reviews-service
# install dependencies
$> npm install
# setup .env file (for sql creds)
$> touch .env
# seed database `revService` (change credentials as needed)
$> npm run seed-db
```git s

Inside `.env` place your SQL credentials (change if needed)
```
DB_HOST=localhost
DB_USER=root
DB_PASS=
```

To execute:

```sh
$> npm run server-dev
```

To execute current tests:

```sh
Fill out credentials on lines 15 & 16 in server/specs/server-spec.js
$> npm run test-server
```

