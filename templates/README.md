## 开发环境搭建

### 环境变量

```
cp .env .env.development.local
```

### Docker

> 初始化开发环境

```
docker-compose build
docker-compose run --rm app bin/setup
```
> 启动服务

```
docker-compose up -d
```

## 正式环境

> 代码发布

```
bundle exec cap production deploy
```


> 服务器配置

```
ansible-galaxy install -r requirements.yml
ansible-playbook -i hosts.ini  playbook.yml
```


> 

```
bundle exec cap production puma:config
bundle exec cap production puma:systemd:config
bundle exec cap production puma:systemd:enable

bundle exec cap production puma:nginx_config
```