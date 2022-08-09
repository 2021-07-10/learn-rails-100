# 03 Fine-Tuning Our Rails Image

|本期版本|上期版本
|:---:|:---:
`Tue Aug  9 11:11:32 CST 2022` |


## A Default Command

```

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
```


## Ignoring Unnecessary Files

> `.dockerignore`

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
```