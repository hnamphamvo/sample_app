# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "sass-rails", "~> 5.0"
gem "sqlite3"
gem "uglifier", ">= 1.3.0"

gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "turbolinks", "~> 5"

gem "bootsnap", ">= 1.1.0", require: false

gem "rubocop", "~> 0.54.0", require: false

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper", "1.2.0"
  gem "guard", "2.13.0"
  gem "guard-minitest", "2.4.4"
  gem "minitest"
  gem "minitest-reporters"
  gem "rails-controller-testing", "1.0.2"
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
