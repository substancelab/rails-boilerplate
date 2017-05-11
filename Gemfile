source "https://rubygems.org"

ruby "2.4.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.0"

# Database
gem "postgresql"

# App serving
gem "puma", "~> 3.7"

gem "rails-i18n"

# Frontend
gem "bootstrap", "~> 4.0.0.alpha6"
gem "sass-rails", "~> 5.0"
gem "simple_form", :github => "elsurudo/simple_form", :branch => "rails-5.1.0"
gem "slim-rails"
gem "turbolinks", "~> 5"

# Assets management
source "https://rails-assets.org" do
  gem "rails-assets-jquery"
  gem "rails-assets-tether", ">= 1.3.3"
end
gem "uglifier", ">= 1.3.0"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem "byebug", :platforms => [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13.0"
  gem "selenium-webdriver"

  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "shoulda-matchers"

  gem "rubocop"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "database_cleaner", :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", :platforms => [:mingw, :mswin, :x64_mingw, :jruby]
