source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'devise'
gem 'geocoder'
gem 'gmaps4rails'
gem 'cancan'
gem 'unicorn'
gem 'figaro'
gem 'kaminari'
gem 'newrelic_rpm'

group :development, :test do
	gem 'rspec-rails', '~> 2.0'
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rack-google_analytics', :require => "rack/google_analytics"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "twitter-bootstrap-rails"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

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
