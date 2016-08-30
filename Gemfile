source 'https://rubygems.org'

# User stable release of ruby 2.2 for this project
ruby '2.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use parse for sending push notification to mobile clients
gem 'parse-ruby-client', git: 'https://github.com/adelevie/parse-ruby-client.git'
# Use parse to send message/data though websocket
gem 'pusher'
# Unicorn is a production ready application server
gem 'unicorn'
# Kaminari all you need for adding pagination
gem 'kaminari'
# Rack Cors gem is to handle cors issue in browsers
gem 'rack-cors'
# Premailer is an awesome gem to insert CSS inline required for HTML email
gem 'premailer-rails'
# Premailer require nokogiri, which is the de-facto HTML parsing library in ruby
gem 'nokogiri'
# Complete Ruby geocoding solution
gem 'geocoder'
# Carrierwave uploader
gem 'carrierwave'
# Cloudinary lib
gem 'cloudinary'
# Resque is a Redis-backed Ruby library for creating background jobs, placing them on multiple queues, and processing them later.
gem 'resque'

gem "braintree"

gem 'turbolinks'

gem 'devise'
# Assets Related
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Use uglifier for assets compression
gem 'uglifier', '>= 1.3.0'
# httparty to wrap request to qiscus
gem 'httparty'
# for localization
gem 'rails-i18n', '~> 4.0.0'
#active suport for big decimal
gem 'activesupport-json_encoder', github: 'rails/activesupport-json_encoder'
# Development settings
group :development do
  # Guard and Guard minitest is to be used to run test automatically
  gem 'guard'
  gem 'guard-minitest'
  # Use growl for OSX notification
  gem 'growl'
  # Deployment
  gem 'capistrano-rbenv'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
end

# Test settings
group :test do
  # Mocha is mocking library that works well with minitest
  gem 'mocha'
  # An awesome gem to keep the our database query efficient
  gem 'bullet'
  # A gem to test on image dimensions
  gem 'dimensions'
end

# Development & Test settings
group :development, :test do
  # Use sqlite3 as the database for Active Record in development and test
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  #gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Setting environment variable
  gem 'figaro'
end

# Production settings
group :production do
  # Use postgres as the main production database
  gem 'pg'
  # Use 12 factor gem for heroku deployment
  gem 'rails_12factor'
end

gem 'react-rails', '~> 1.5.0'

# Use redis for turn database
gem 'redis'
gem 'redis-namespace'
gem 'nexmo'
gem "opentok", "~> 2.3"
