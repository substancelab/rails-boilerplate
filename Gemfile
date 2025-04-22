# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.4.3"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "<= 8.0.2"

gem "bootsnap", ">= 1.4.2", :require => false

# Database
gem "postgresql"

# App serving
gem "puma"
gem "rack-canonical-host"

gem "rails-i18n"

# Authentication
gem "devise"

# Frontend
gem "cssbundling-rails"
gem "jsbundling-rails", "~> 1.2"
gem "simple_form"
gem "slim-rails"
gem "turbo-rails"

# Integrations
gem "net-imap"
gem "net-pop"
gem "net-smtp"

# Assets management
gem "sprockets-rails"
gem "uglifier"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem "byebug", :platforms => [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem "capybara"
  gem "selenium-webdriver"

  gem "dotenv-rails"

  gem "factory_bot_rails"
  gem "rspec-rails", ">= 4.0.0.beta2"
  gem "shoulda-matchers"

  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "rubocop-rspec_rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem "listen"
  gem "web-console"

  # Run stuff automatically
  gem "guard", :require => false
  gem "guard-livereload", :require => false
  gem "guard-rspec", :require => false
  gem "guard-rubocop", :require => false
end

group :test do
  gem "database_cleaner-active_record", :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", :platforms => [:mingw, :mswin, :x64_mingw, :jruby]
