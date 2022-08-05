# Templates for [Chowlk](https://chowlk.linkeddata.es/index.html) Converter

- [Github Repository for Chowlk](https://github.com/oeg-upm/Chowlk)
- [Documentation for Chowlk](https://github.com/oeg-upm/Chowlk)
- [Chowlk Youtube Getting Started](https://youtu.be/aTAvtkPCdMw)

There is an outdated url for the api endpoint in the github readme.

```bash
 curl -F 'data=@junk.drawio' https://app.chowlk.linkeddata.es/api
```

```bash
$ curl -F 'data=@junk.drawio' https://app.chowlk.linkeddata.es/api | jq -r .ttl_data junk.json
```
