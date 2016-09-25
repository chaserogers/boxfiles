#add rspec and factory_girl gems
gem_group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
end

#add guard-rspec and rubocop gems
gem_group :development do
  gem 'guard-rspec', require: false
  gem 'rubocop', require: false
end

#install gems
run "bundle install"

#initialize rspec with default configuration
generate('rspec:install')

#initialize guard
run "bundle exec guard init rspec"

#fix README
run "rm README.rdoc"
run "touch README.md"

#add git templates
run "mkdir .github"
run "cp ~/.gitmessage.txt ./.github/commit.template"
run "cp ~/.pull_request_template.md ./.github/PULL_REQUEST_TEMPLATE.md"
# run "cp ~/.issue_template.md #{app_path}/.github/ISSUE_TEMPLATE.md"

#add new rake file to initialize commit template in this directory only
rakefile("commit_template.rake") do
  <<-TASK
    namespace :template do
      desc "Sets git commit template in the scope of this project"
      task :commit do
        puts "\e[34msetting git template...\e[0m"
        sh "git config commit.template './.github/commit.template'"
      end
    end
  TASK
end

#initialize local Git repository and Initial Commit
git :init
git add: "."
git commit: "-m 'initial commit'"

#create remote repo on Github and push
# github_username = 'b0xw00d'
# run "curl -u '#{github_username}' https://api.github.com/user/repos -d '{\"name\":\"#{app_path}\"}'"
# git remote: "add origin https://github.com/#{github_username}/#{app_path}.git"
# git push: "origin master"
