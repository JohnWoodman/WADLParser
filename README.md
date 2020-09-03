# WADLGrabber

Very basic script that parses an application.wadl file and grabs all the endpoints to be used for bruteforcing or anything else.

```
Usage:
./WADLGrabber.sh [options]

options:
-h, --help      show help page
-f, --file      specify path to local application.wadl file
-u, --url       specify url of remote application.wadl file
```

## Installation
- Clone Repo: `git clone --recurse-submodules https://github.com/JohnWoodman/WADLGrabber.git`
- Install node: `sudo apt install nodejs`
- Install npm: `sudo apt install npm`
- Install dependenices: `npm install`
- Install xml2json: `npm install xml2json`
- Install jq: `sudo apt install jq`
