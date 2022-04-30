gsub_file 'Gemfile', /ruby\s+".*/, 'ruby "~> 2.7.0"'

git add: "."
git commit: %Q<-m 'Change Ruby Version'>


# sed -i -r 's/ruby\s+".*/ruby "~> 2.7.0"/' Gemfile