# learn-rails-100


## Ruby Versions

* [1.2 Ruby Versions - Upgrading Ruby on Rails](https://guides.rubyonrails.org/upgrading_ruby_on_rails.html#ruby-versionss)
* [Ruby on Rails 5.2 Release Notes](https://github.com/rails/rails/blob/f84eecec7127cff916c89a20b0eb5678fefc572c/guides/source/5_2_release_notes.md#notable-changes)
* [`ruby-version.tt`](https://github.com/rails/rails/blob/main/railties/lib/rails/generators/rails/app/templates/ruby-version.tt)、[**Choosing the Ruby Version - Rbenv**](https://github.com/rbenv/rbenv#choosing-the-ruby-version)
* [`Gemfile.tt`](https://github.com/rails/rails/blob/main/railties/lib/rails/generators/rails/app/templates/Gemfile.tt)、[**Specifying a Ruby Version - Bundler**](https://bundler.io/gemfile_ruby.html#specifying-a-ruby-version)


## Initialize

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
gem install rails -v 5.2.7 -N -V
```


```bash
export RBENV_VERSION=2.7.6
rails new snake_api -T -d mysql --api
```

**5.2.6**

```
bundle exec spring binstub --all
```

**6.1.4**

```
bundle binstubs bundler
```

**7.0.0**

```
bundle binstubs bundler
```



## Rails Application Templates



**`version`**

* [`Rails.version`](https://github.com/rails/rails/blob/main/railties/lib/rails/version.rb)
* [`Rails.gem_version`](https://github.com/rails/rails/blob/main/railties/lib/rails/gem_version.rb)
* [`Gem::Version`](https://ruby-doc.org/stdlib-2.5.0/libdoc/rubygems/rdoc/Gem/Version.html)

**argements**

* `options[:database]`


**Ref**

* [Rails Application Templates — Ruby on Rails Guides](https://guides.rubyonrails.org/rails_application_templates.html)
* [Thor](http://whatisthor.com/)、[Actions](http://www.rubydoc.info/github/wycats/thor/Thor/Actions)

## Ref


* [Ruby on Rails](https://rubyonrails.org/)
* [Rails 指南 5](https://flapybooks.com/products/railsguides)、[Rails 指南 4.1](https://leanpub.com/rails-guides-cn)
* [Ruby on Rails 實戰聖經](https://ihower.tw/rails/)
*  [Rails 101 （ Rails 5 版）](https://courses.growthschool.com/p/rails-101)、[Rails 101 ( Rails 4 版）](https://courses.growthschool.com/p/rails-101-4-0)、[Rails 101](https://leanpub.com/rails-101)
*  [rails-102](https://github.com/rocodev/rails-102)
*  [為你自己學 Ruby on Rails](https://railsbook.tw/)
*  [Reliably Deploying Rails Applications](https://leanpub.com/deploying_rails_applications)
* [Ruby on Rails 教程（原书第 6 版）](https://flapybooks.com/products/railstutorial6th/)
* [Efficient Rails DevOps](https://efficientrailsdevops.com/)