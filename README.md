# Ailuropoda

This project is to create a "sad panda" api.

- v1 will give you back a jpg of a sad panda at location: http://localhost:1901/v1/sad_panda01.png

## Deployment

### Dockerfile

For your convenience there is [Dockerfile](./Dockerfile) located in this directory.
You can start up this application assuming you have Docker installed via:

```bash
$ docker build -t sadpanda .
$ docker run -it  -p 1901:1901 --rm --name sadpanda sadpanda
```

This will give you a Docker container named sadpanda and start it on port `1901`.

Go to: http://DOCKERHOST:1901/v1/sad_panda01.png to see the image.
