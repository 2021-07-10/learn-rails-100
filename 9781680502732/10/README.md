# 10 Some Minor Irritations

|本期版本|上期版本
|:---:|:---:
`Fri Aug 26 13:37:32 CST 2022` |

## Rails tmp/pids/server.pid Not Cleaned Up

```bash
#!/bin/sh
set -e

if [ -f tmp/pids/server.pid]; then
	rm tmp/pids/server.pid
fi

exec "$@"

```

```bash
ENTRYPOINT ["./docker-entrypoint.sh]
```
