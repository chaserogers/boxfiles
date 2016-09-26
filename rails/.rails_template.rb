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

#add custom icons for rspec examples
inject_into_file 'spec/spec_helper.rb', after: /^end/ do
  <<-CODE


if defined? RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters::ProgressFormatter.class_eval do
    DOTS = ["✅ ", "⚠️ ", "❌ "]

    def example_passed(_example)
      output.print DOTS[0]
    end

    def example_pending(_example)
      output.print DOTS[1]
    end

    def example_failed(_example)
      output.print DOTS[2]
    end
  end
end
  CODE
end

#fix README
run "rm README.rdoc"
run "touch README.md"

#add git templates
run "mkdir .github"
run "cp ~/.gitmessage.txt ./.github/commit.template"
run "cp ~/.pull_request_template.md ./.github/PULL_REQUEST_TEMPLATE.md"
# run "cp ~/.issue_template.md #{app_path}/.github/ISSUE_TEMPLATE.md"

#add .editorconfig file
run "touch .editorconfig"
inject_into_file '.editorconfig', after: // do
  <<-CODE
root = true

[*]
charset = utf-8
indent_style = space
end_of_line = lf
trim_trailing_whitespace = true
insert_final_newline = true

[*.md]
trim_trailing_whitespace = false

[*.rb]
indent_style = space
indent_size = 2

[*.{js,json,html,erb,haml,scss,sass}]
indent_style = space
indent_size = 4

[Rakefile]
indent_style = space
indent_size = 2

[Gemfile*]
indent_style = space
indent_size = 2

[config.ru]
indent_style = space
indent_size = 2
  CODE
end

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
