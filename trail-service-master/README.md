# Trail Service

Trail service for Nine Trails Hack Reactor <abbr title="Front End Capstone">FEC</abbr> project. Supplies an API endpoint for trail detail data at `/:trailId/trailInfo` on `port 3001`.

## Motivation

Part of the Team Scully FEC project to implement different services to be consumed by a proxy page representing a product detail page about hiking trails.

**Contents**

* [paths-service](https://github.com/rpt09-scully/paths-service)
* [profiles-service](https://github.com/rpt09-scully/profile-service)
* [trail-photos-service](https://github.com/rpt09-scully/trail-photos-service)
* trail-service: [Current]
* [reviews-service](https://github.com/rpt09-scully/reviews-service)

## Code Style

[![Style Guide: Hack Reactor](https://img.shields.io/badge/Style%20Guide-Hack%20Reactor-blue.svg)](https://github.com/hackreactor-labs/eslint-config-hackreactor)

## Tech/Frameworks used

* [mySQL](https://dev.mysql.com/doc/refman/5.7/en/)
* [Express](http://expressjs.com/)
* [knex](https://github.com/tgriesser/knex)

## Code Example

Example JSON response to `http:localhost:3001/1/trailInfo` for a trail with an ID of `1`:

```json
{
  "data": {
    "attributes": {
      "trail_name": "Golden Gate Park Trail",
      "distance": 6,
      "distance_units": "miles",
      "elevation_gain": 351,
      "elevation_units": "ft",
      "description": "Golden Gate Park Trail is a Bernie favorite. A 6.1 mile heavily trafficked loop trail located near San Francisco, California that features a lake and is good for all skill levels. The trail offers a number of activity options and is accessible year-round. Dogs are also able to use this trail but must be approved by Bernie.",
      "route_type": "Loop",
      "difficulty": "Easy",
      "general_area": "Golden Gate Park",
      "origin": "https://www.alltrails.com/trail/us/california/golden-gate-park-trail",
      "tags": ["dogs on leash", "hiking", "mountain biking", "trail running", "walking", "views", "wildlife", "muddy", "dog friendly", "backpacking", "birding", "historic site"]
    },
    "trail_id": 1,
    "type": "trail"
  }
}
```

### Installing Dependencies

```sh
# cd into directory
$ cd trail-service
# install dependencies
$ npm install
```

## Installation

To set up:

``` sh
# cd into directory
$ cd trail-service
# setup .env file (for sql creds)
$ touch .env 
# seed database `trailService` (change credentials as needed)  
# you can either run  
$ npm seed-database  
# which executes mysql -u root -p < schema.sql  
# OR you can simply run  
$ mysql -u root < schema.sql
# note that you may use another user account if `root` access is not available
# from the command line, use or modify the `root` user as needed
```

Inside `.env` place your SQL credentials (change if needed)  
``` 
DB_HOST=localhost
DB_USER=root
DB_PASS=
```

To execute:

``` sh
$ npm run server-dev
```

## API Reference

This `trail-service` responds to requests for trail detail data when it receives a trail ID in the format `/:trailId/trailInfo`. See [code example](#code-example) above for response structure.

## Tests

```sh
$ npm test
```

* * *

## Notes

#### Log

##### 2018-12-03 

* Refactor existing tests to Jest @done
* Install babel for Jest & React, and React & webpack cause why not

##### 2018-12-02 

* Edit and update readme @done
* Review code review notes, Phase 2 checklist @done
* Refactor existing tests to Jest
* mvp proxy layout @backlog

##### 2018-11-21 - 2018-11-28

* Investigate proxy layout ideas
* Set up [reference repo](https://github.com/rpt09-scully/proxy-reference-files) and files
* Need to keep this log updated more frequently

#### 2018-11-21 

* server.test.js instal dependencies, add server app tests

#### 2018-11-19 
* Add static route, clean up previous branches
* Testing dependencies (`test` directory, install Mocha, Chai)
* db.test.js - tests for MySQL query functions in Knex
