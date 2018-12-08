# Profile Service

Profile Service for 9 Trails

## Related Projects

 - paths: https://github.com/rpt09-scully/paths-service/
 - profile: [Current]
 - photos: https://github.com/rpt09-scully/trail-photos-service/
 - trail: https://github.com/rpt09-scully/trail-service/
 - reviews: https://github.com/rpt09-scully/reviews-service/

## Table of Contents

1. [Usage](#Usage)
1. [Requirements](#requirements)
1. [Development](#development)

## Usage

> Coming Soon

## Requirements

> Coming Soon

## Development


To set up:

  ``` sh
  # cd into directory
  $> cd profile-service
  # install dependencies
  $> npm install
  $> npm install mysql
  # setup config.js file (for sql creds), cd to `database`
  $> cd database
  $> cp config-example.js config.js
  # seed database `profile_db` (change credentials as needed)
  $> mysql -u <username here> -p < schema.sql  
  ```

  Inside `config.js` place your SQL credentials (change if needed)
  ``` 
  module.exports = {
    user: 'root', 

    password: 'example', 

    database: 'profiles_db'
  };
  ```

  To execute:

  ``` sh
  $> npm run start
  ```

### Installing Dependencies

> Coming Soon

