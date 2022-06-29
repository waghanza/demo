# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.0'

# Rails
gem 'rails', '~> 6.1.4'

# PostgeSQL
gem 'pg', '~> 1.2.3'

# Puma
gem 'puma', '~> 5.6.0'

# Properly handle BL
gem 'active_interaction', '~> 5.0.0'

# TODO: check if really required
gem 'turbolinks'
gem 'uglifier'

group :development, :test do
  gem 'database_cleaner-active_record'
  gem 'debug' # will be included in ruby 3.1
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
