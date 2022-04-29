# learn-rails-100

> [1.2 Ruby Versions](https://guides.rubyonrails.org/upgrading_ruby_on_rails.html#ruby-versions)


```bash
docker run -it --rm -v ~/Documents:/usr/src/app ruby:2.7 bash
cd /usr/src/app
```

```
git config --global user.name "guxiaobai"
git config --global user.email "sikuan.gu@gmail.com"
git config --global init.defaultBranch main
git config --global push.default simple
```

```bash
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
```


```bash
gem install rails -v 5.2.7 -N -V
rails new snake_api -T -d mysql
```


## Rails Application Templates

**`app_name`**

> `snake-api` vs `snake_api`

* [`5.2.6+`](https://github.com/rails/rails/blob/0b3a63fe07507fca5b2cab6409e85789a46ed624/railties/lib/rails/generators/app_name.rb#L9) `.tr('\\', "").tr("-. ", "_")`
* [`5.2.6`](https://github.com/rails/rails/blob/v5.2.6/railties/lib/rails/generators/rails/app/app_generator.rb#L497) `.tr('\\', "").tr(". ", "_")`

**`version`**

* [`Rails.version`](https://github.com/rails/rails/blob/main/railties/lib/rails/version.rb)
* [`Rails.gem_version`](https://github.com/rails/rails/blob/main/railties/lib/rails/gem_version.rb)
* [`Gem::Version`](https://ruby-doc.org/stdlib-2.5.0/libdoc/rubygems/rdoc/Gem/Version.html)


**Ref**

* [Rails Application Templates — Ruby on Rails Guides](https://guides.rubyonrails.org/rails_application_templates.html)
* [Thor](http://whatisthor.com/)、[Actions](http://www.rubydoc.info/github/wycats/thor/Thor/Actions)

## Ref


* [Ruby on Rails](https://rubyonrails.org/)
* [Rails 指南 5](https://flapybooks.com/products/railsguides)、[Rails 指南 4.1](https://leanpub.com/rails-guides-cn)
* [Ruby on Rails 實戰聖經](https://ihower.tw/rails/)
* [Ruby/Rails打造企业级RESTfulAPI项目实战我的云音乐](http://www.ixuea.com/books/17) - `626431918`
*  [Rails 101 （ Rails 5 版）](https://courses.growthschool.com/p/rails-101)、[Rails 101 ( Rails 4 版）](https://courses.growthschool.com/p/rails-101-4-0)、[Rails 101](https://leanpub.com/rails-101)
*  [rails-102](https://github.com/rocodev/rails-102)
*  [為你自己學 Ruby on Rails](https://railsbook.tw/)