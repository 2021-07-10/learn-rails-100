insert_into_file 'Gemfile', :after => /:development, :test do/ do
  <<-EOS.strip_heredoc.indent(2)

    gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
  EOS
end

run_bundle

append_to_file '.gitignore' do
  <<-EOS.strip_heredoc

    # dotenv
    .env.*\.local
  EOS
end

create_file '.env.template'

append_to_file '.env.template' do
  <<-EOS.strip_heredoc
    #{app_name.upcase}_DATABASE_HOST=db
    #{app_name.upcase}_DATABASE_USERNAME=root
    #{app_name.upcase}_DATABASE_PASSWORD=example
  EOS
end

# production
gsub_file 'config/database.yml', /username: #{app_name}/, ''
gsub_file 'config/database.yml', /password: <%.*/, ''

# default
gsub_file 'config/database.yml', /(host:) localhost/, "\\1 <%= ENV['#{app_name.upcase}_DATABASE_HOST'] %>" 
gsub_file 'config/database.yml', /(username:) root/, "\\1 <%= ENV['#{app_name.upcase}_DATABASE_USERNAME'] %>" 
gsub_file 'config/database.yml', /(password:)/, "\\1 <%= ENV['#{app_name.upcase}_DATABASE_PASSWORD'] %>" 


run 'cp .env.template .env.development.local'

git add: "."
git commit: %Q<-m 'Environment Manage'>