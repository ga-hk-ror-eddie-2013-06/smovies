source 'https://rubygems.org'

gem 'rails', '3.2.13'

# for heroku database
group :test, :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

# for authentication
gem 'devise'

# for Sign in with Facebook
gem 'omniauth'
gem 'omniauth-facebook'

# for look and feel
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

# for managing env["FB_APP_ID"] in dev and test (production heroku server use heroku config:set FB_APP_ID)
gem 'dotenv-rails', :groups => [:development, :test]


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
