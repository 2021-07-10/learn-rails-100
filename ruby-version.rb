gsub_file 'Gemfile', /ruby\s+'(\d.\d.\d)'/, "ruby '~> \\1'"

git add: "."
git commit: %Q<-m 'Change Ruby Version'>