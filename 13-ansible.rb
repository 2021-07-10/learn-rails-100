def source_paths
  Array(super) +
  [File.expand_path('../templates', __FILE__)]
end

copy_file 'hosts.ini'
copy_file 'requirements.yml'
copy_file 'playbook.yml'


git add: "."
git commit: %Q<-m 'Support Ansible'>