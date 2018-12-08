# Paths Service

Paths / Routes service for 9 trails.

  - [1.1. Related Projects](#11-related-projects)
  - [1.2. To do](#12-to-do)
  - [1.3. Usage](#13-usage)
    - [1.3.1. API endpoints](#131-api-endpoints)
    - [1.3.2. Individual Component Page](#132-individual-component-page)
  - [1.4. Development Setup](#14-development-setup)
  - [1.5. Log](#15-log)
    - [1.5.1. Seeding the database](#151-seeding-the-database)
    - [1.5.2. Setting up the API](#152-setting-up-the-api)
    - [1.5.3. Backfilling entries via a seededRandom](#153-backfilling-entries-via-a-seededrandom)
    - [1.5.4. Validation service](#154-validation-service)
    - [1.5.5. Unit and Integration Tests](#155-unit-and-integration-tests)
    - [1.5.6. Page Layout Scaffolding + Service Launcher](#156-page-layout-scaffolding--service-launcher)
    - [1.5.7 React basic setup](#157-react-basic-setup)

## 1.1. Related Projects

  - paths: [Current]
  - profiles: https://github.com/rpt09-scully/profile-service
  - photos: https://github.com/rpt09-scully/trail-photos-service
  - trails: https://github.com/rpt09-scully/trail-service
  - reviews: https://github.com/rpt09-scully/reviews-service

## 1.2. To do

```
- Phase 02
  x Setup react env
  - Setup proxy server
  - Have data change based on route
  - how will scaffold get id ?
  - Render basic map widget
  - render basic recording widget
- Save posts to database and upload xml file to S3
  - when implemented, for tests make sure to remove a post after

```



## 1.3. Usage 

### 1.3.1. API endpoints

Below you can find all available endpoints. 

Note: that those with an asterisk *(\*)* will have more detailed information , aka actual point data for creating a visual path. Because this is significantly more data, requests that recieve multiple paths likely will not provide this.

  - GET `/paths` 
    - retrieves all paths in database (shouldn't really be used except for testing)
  - GET `/:trailId/paths?sortBy={id|rating|date},{asc|desc}*`
    - retrieves all recordings / paths for a specified trail id. sort optionas as shown (optional!)
  - GET `/:trailId/recordings?sortBy={id|rating|date},{asc|desc}*`
    - retrieves all recordings (excluding hero path) for a specified trail id. sort optionas as shown (optional!)
  - POST `/:trailId/recordings`
    - post a user path recording to a specified trail id.
  - GET `/paths/:pathId` * 
    - retrieves detailed information about a path by a given ID in database. this also will retrieve gpx data.
  - GET `/:trailId/heroPath` * 
    - retrieves detailed information about the canonical path for a given trail data. this also will retrieve gpx data.
  - GET `/:trailId/trailHead` * 
    - retrieves first point of the canonical path for a given trail from the database if available.

### 1.3.2. Individual Component Page

Going to `GET /` aka the root server page, will render the individual components. This is useful for testing.

## 1.4. Development Setup

This service uses the following dev stack:

  - Server: node / NPM
  - Client: react
  - DB: PostgreSQL (installed via brew)
  - Testing: jest


If you don't have PostgreSQL,It can be installed with brew.

``` sh
# install npm dependencies
$> cd /path/to/paths-service
$> npm install
# install and start service
$> brew install PostgreSQL
$>  brew services start postgresql
# create the db with `createdb` command
$> createdb 9trails-paths
# seed  db
$> npm run seed-database
$> pql 9trails-paths #to enter psql repl,  to confirm creation
$ (repl)> \dt; #to show all tables (should see 'paths now)
$ (repl)> \q; #to exit repl
# woop done!
```

Inside `.env` place your Server + SQL credentials (change if needed)

``` 
HOST=localhost
PORT=3005
DB_HOST=localhost
DB_PORT=3005
DB_USER=
DB_PASS=
```

To test:
``` sh
$> npm test #synonymous with jest ./test
```

To execute:
``` sh
$> npm run server-dev #should be running on 3005
```

To build in react:
``` sh
# build once (builds to dist/)
$> npm run build 
# or for watching file changes
$> npm run buildWatch
```

## 1.5. Log

### 1.5.1. Seeding the database

As outlined in development setup ^, you should have psql installed. As a convenience, the package.json script can be ran to replicate the act of doing the `psql [database] < [sqlFile]` routine.
``` sh
# seed the database with the db/schema.sql content
$> npm run seed-database
```

To seed the database, I had some acquired data stored in google spreadsheets. Info on how some of this data, specifically the grabbing of gpx files can maybe be seen in `dummyData/` folder. Furthermore, I stored this data in a google spreadsheet as rows and the 1st row being the name of the `column_key` within the database. I then made a quick node script to autogenerate, given a set of configurations + urls to these gSheets, it will create the `*.sql` sql file tha you can use to populate your database. currently it supports postgresql and sql. 

I found it interesting that postgresql:

  - doesn't have the use DATABASE_NAME; drop DATABASE...etc syntax, because to enter the psql repl, you specify the database beforehand
  - Insert statements don't use double quotes, they're single so additional work to differentiate the two types had to be done.
  - Error descriptions for invalid sql syntax / schema syntax are much better in postsql.

### 1.5.2. Setting up the API

Setting up the api went fine.

One interesting thing was to create an async formatter for desired keys. So for example after
retrieving db attributes, one can then supply a mapping object that can create / update attributes such as creating the `s3_url` from a relative filename and parsing the `gpx_data` from url.
This bundles the logic up nicely in one file.

I have two areas that will need enriching, data-wise. 

  - *Trail Entries 21-100*. Trail Entries 1-20 contain valid information, but 21-100 currently don't exist. Need a strategy for backfilling this.
  - *Recordings with missing gpx data*. For trails 1-20, we have the canonical / hero paths. but for the rest as well as for the various recordings (user submitted routes),
  we simply do not have every single gpx file on S3. these currently will leave the `gpx_data` entry null. Need a way to swap out with an actual gpx file we have as a placeholder and maybe also include a attribute to describe this swap!

### 1.5.3. Backfilling entries via a seededRandom

So to solve the previous 2 issues, outside of getting banned temporarily for trying to 'aquire' accurate gpx data, I still had quite a gap in both actual gpx files and just recordings ^^ as mentioned above. I had about 70/100 of the canonical trails' gpx data, and had about 50% (220/447) of the gpx recordings (user submitted paths). Given my cease and desist, I decided to backfill using a random seed strategy. 

* Snippet from db.js *

``` js
    // the seed can provide a consistent random number based off the id of the path
    seededRandom: function(seed) {
    seed = (seed * 9301 + 49297) % 233280;
    var rnd = seed / 233280;
    return rnd;
  },
```
* How I resolved*
  - *Trail Entries 70-100 canonical gpx's + 50% recordings does not have valid gpx_url*
    - for those canonical gpx files that are missing ^, I used the id (70-100) to generate a psuedo-random value, that would then be used to consistently grab a gpx file from the valid pool that I DO have. As a means to notify users of api endpoint, the api also appends an additional property called `backfilled_gpx_url` which reaveals which gpx_url was used. Again this is consistent due to the seed function

  - *Backfilling trails with dummy user recordings*
    - so the previous thing would give us fake gpx data for those missing on canonical trails (`hero_path`) and our 50% of recordings, but user recordings for a bunch don't exist since I only got up to maybe trail 20 for actual data! So to make every trail (0-100), seem like they have a user submitted recording, or series of recordings, I also used that function to backfill anywhere from `1-3 recordings` if none we're present on the trail!. As a means to notify users of api endpoint, the api also appends 2 additional properties called `backfilled_recording` (boolean, set to true)
    `backfilled_from_trail` (integer, which reaveals which the actual trail it was plucked from). Again this is consistent due to the seed function.

### 1.5.4. Validation service

In creating the post endpoint, a validation service was used where one can supply required fields and async validation callbacks as an array of object literals. then calling `validator.validate(req.body)` returns a promise.

Below is a snippet of that service Dictionary.

``` js
  {
    name: 'ranking',
    type: 'number',
    errorMessage: 'is not between 0 & 5',
    validator: (val) => {
      return (0 < val && val <=5)
    }
  },
  {
    name: 'gpx',
    type: 'string',
    required: true, 
    errorMessage: 'is not a valid gpx file',
    validator: (val) => {
      return aws.validateGPX(val); ///returns promise
    }
  }
```

### 1.5.5. Unit and Integration Tests

Below was my strategy for developing my test suite which is stored in `test/` folder. Endpoints http:// requests test effective integration between server side services, routing, and db calls. Unit tests for each service are also tested. I used `jest` and the tests can be run by `npm test`

```
- test suite
  - unit tests 
    - db
    - validation
    - aws
  - integration
    - endpoints
```

### 1.5.6. Page Layout Scaffolding + Service Launcher

Switching gears in phase 02, was time to think about page layout for all our individual services component. I layed out a rough draft in [Figma](http://figma.com/file/CShpO1gQJP6MDReqEmgaZN/9-Trails?node-id=0%3A1) as a starting point and then using Jeff's layout.html from our [proxy-reference-files repo](https://github.com/rpt09-scully/proxy-reference-files), I created the [MVP of our scaffold](https://github.com/rpt09-scully/proxy-reference-files/tree/master/shared/layout.html) in the shared directory. THis will likely be improved but works as a base for inserting our individual components.

In tandem, i also created a [shell script](https://github.com/rpt09-scully/proxy-reference-files/tree/master/shared/launch) to launch all services based on a `launchDirs.txt` file. This file is line seperated `[path/to/service] > npm run [scriptName]` which tells the shell script which directorys should be cd'd into and server started. All of these processes get thrown into a console in their seperate tab! So this manual process of launching 5 services and a proxy is now skipped with this tool.


### 1.5.7. React basic setup

I setup my basic react setup. Beacuase I have two widgets I have namespaced them accordingly both in the DOM and React as `NTPathService.CanonicalPath` and `NTPathService.Recordings` for react components and `9Trails.PathService.CanonicalPath` and `9Trails.PathService.Recordings` for dom ids. 

I setup webpack serving from the dist/ folder on port 3000. THis runs a standalone version of just my components for now for quick testing. I will do the proxy server next.
