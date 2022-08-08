# 02 Running a Rails App in a Container

|本期版本|上期版本
|:---:|:---:
`Mon Aug  8 14:19:59 CST 2022` |


## Defining Our First Custom Image

```bash
apt-get install -yqq --no-install-recommends nodejs
```

## Running a Rails Server with Our Image

```bash

docker run -p 3000:3000 a1df0eddba18 \
	bin/rails s -b 0.0.0.0
```

**Finding the IP Address of a Running Container**

```bash
docker inspect --format \
'{{ .NetworkSettings.IPAddress }}' d7230c4b0595
```
