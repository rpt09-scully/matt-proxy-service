# Service Launcher tool (OS X)

Launch services very easily with this tool that uses applescript in a bash script to automagically launch a series of commands given a directory and the command. Use `npmDirs.txt` to define your folders and command line script.
Lines with # or that are blank are ignored!

Below is an example
```
# put proxys here!
../../../chris-proxy-service > npm run server-dev

# put services here!
../../../paths-service > npm run server-dev
../../../reviews-service > npm run server-dev
../../../trail-service > npm run server-dev
../../../trail-photos-service > npm run startWeb

# remember an empty line (so this here for convenience)
```

## Running it 


### run in terminal:
``` sh
# kill all terminal windows (eh there might be a lot)
$> killall Terminal
# reccomended if you might have node processes already running
$> killall -9 node
#run that puppy (if not excutable chmod +x launch.sh)
$> ./launch.sh
```
This will look like this in your terminal! COOL RIGHT? they should all be launched

### result:
```
(Task #1) starting 'npm run server-dev'in '../../../chris-proxy-service'...
tab 1 of window id 461
(Task #2) starting 'npm run server-dev'in '../../../paths-service'...
tab 1 of window id 463
(Task #3) starting 'npm run server-dev'in '../../../reviews-service'...
tab 1 of window id 465
(Task #4) starting 'npm run server-dev'in '../../../trail-service'...
tab 1 of window id 467
```

## Integrating in your npm scripts!

I have a parent directory with a package.json to all these directories, Including this repo!! It looks like this!

``` sh
# 
FEC
.
├── package-lock.json
├── package.json
├
├── chris-proxy-service
├── paths-service
├── profile-service
├── proxy-reference-files
├── reviews-service
├── trail-photos-service
└── trail-service
```

so in that package.json i have set the launcher here to easily run with `npm run launchServices`. Boom done!

``` js
{
  "scripts": {
    "launchServices": "killall Terminal & killall -9 node & ./proxy-reference-files/shared/launch/launch.sh",
  }
}
```