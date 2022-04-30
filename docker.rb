def source_paths
  Array(super) +
  [File.expand_path('../templates', __FILE__)]
end

copy_file 'Dockerfile'
copy_file 'docker-compose.yml'

git add: "."
git commit: %Q<-m 'Support Docker'>