# 04 Describing Our App Declaratively with Docker Compose

|本期版本|上期版本
|:---:|:---:
`Tue Aug  9 11:29:56 CST 2022` |

## Launching Our App

> `config/boot.rb`

```ruby
$stdout.sync = true
```

* By convention, Compose names the network `<appname>_default`, where `appname` is inferred from the containing directory.
* using the convention `<appname>_<service_name>:latest`, again inferring the appname from the enclosing directory. In our case, this becomes myapp_web:latest.

## Other Common Tasks

```bash
docker-compose logs -f web
```

## Ref

* [Difference between $stdout and STDOUT in Ruby](https://stackoverflow.com/questions/6671716/difference-between-stdout-and-stdout-in-ruby)