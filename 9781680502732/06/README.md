# 06 Adding a Database: Postgres

|本期版本|上期版本
|:---:|:---:
`Tue Aug  9 15:06:54 CST 2022` |


## Connecting Our Rails App to Postgres

* `.env/development/web`
* `env_file`、`environment`


## Decoupling Data from the Container

```yaml
services:
	db:
		image: postgres
		volumes:
		- db_data:/var/lib/postgresql/data
volumes:
	db_data:
```