# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'actionview-component'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'jbuilder', '~> 2.7'
gem 'puma', '>= 4.3.3'
gem 'rails', '~> 6.0.1'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

gem 'rack', '>= 2.0.8'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
