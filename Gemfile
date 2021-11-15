# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.0'

# Rails
gem 'rails', '~> 6.1.4'

# PostgeSQL
gem 'pg', '~> 1.2.3'

# Puma
gem 'puma', '~> 5.5.2'

group :development, :test do
  gem 'debug' # will be included in ruby 3.1
  gem 'rubocop-rails'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end
