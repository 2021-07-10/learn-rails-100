# 03 Fine-Tuning Our Rails Image

|本期版本|上期版本
|:---:|:---:
`Fri Aug 26 10:52:00 CST 2022` |


## A Default Command

```

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
```


## Ignoring Unnecessary Files

> `.dockerignore`

```bash
#Git
.git
.gitignore

# Logs
log/*

# Temp files
tmp/*

# Editor temp files
*.swp
*.swo
```

## The Image Build Cache

```bash
apt-get update -yqq && apt-get install -yqq --no-install-recommends \
	nodejs
```

## Caching Issue 2: Unnecessary Gem Installs

```bash
COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app
```