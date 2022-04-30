# @TODO: gem 'capistrano-rbenv', '~> 2.2'

gem_group :development do
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.1'
  gem 'capistrano3-puma', '~> 5.2'
end

run_bundle

run "bundle exec cap install"

git add: "."
git commit: %Q<-m 'Capistrano Init'>

domain = ask('domain:')
repo   = ask('repository:')

# Basic
gsub_file 'config/deploy.rb', /(set\s+:application,).*/, %Q<\\1 "#{app_name}">
gsub_file 'config/deploy.rb', /(set\s+:repo_url,).*/, %Q<\\1 "#{repo}">
uncomment_lines 'config/deploy.rb', /ask\s+:branch/
gsub_file 'config/deploy.rb', /(#\s+)(set\s+:deploy_to,).*/, %q<\2 "/var/www/#{fetch(:application)}">

prepend_to_file 'config/deploy/production.rb' do
  <<-EOS.strip_heredoc
    server '#{domain}', user: '#{app_name}', roles: %w{app db web}
  EOS
end

# Capistrano::rbenv
# @TODO uncomment_lines 'Capfile', /require.*rbenv/

uncomment_lines 'config/deploy.rb', /append\s+:linked_files/
gsub_file 'config/deploy.rb', "config/database.yml", "coinfig/master.key"

# Capistrano::Bundler
uncomment_lines 'Capfile', /require.*bundle/

# Capistrano::Rails
uncomment_lines 'Capfile', /require.*migrations/
uncomment_lines 'config/deploy.rb', /append\s:linked_dirs/

# Capistrano::Puma
insert_into_file 'Capfile', :after => /require.*passenger.*\s/ do
  <<-EOS.strip_heredoc
    require 'capistrano/puma'
    install_plugin Capistrano::Puma
    install_plugin Capistrano::Puma::Nginx
    install_plugin Capistrano::Puma::Systemd
  EOS
end


insert_into_file 'config/deploy.rb' do
  <<-EOS.strip_heredoc

    set :nginx_config_name, "#{app_name}"
    set :nginx_server_name, "#{domain}"
    set :puma_phased_restart, true
  EOS
end