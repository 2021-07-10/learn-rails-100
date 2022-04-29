def source_paths
  Array(super) +
  [File.expand_path('../templates', __FILE__)]
end

gem 'jbuilder', '~> 2.11'
gem 'oj', '~> 3.13'
gem 'rack-cors', '~> 1.1'

run_bundle

copy_file 'welcome/welcome_controller.rb', 'app/controllers/welcome_controller.rb'
copy_file 'welcome/index.json.jbuilder', 'app/views/welcome/index.json.jbuilder'
copy_file 'welcome/index.html.erb', 'app/views/welcome/index.html.erb'

remove_file "config/initializers/cors.rb"
copy_file "cors.rb", "config/initializers/cors.rb"

route "root 'welcome#index'"

git add: "."
git commit: %Q<-m 'Support Api'>