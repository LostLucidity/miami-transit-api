source 'https://rubygems.org'
ruby '2.2.4'

gem 'rails', '4.2.0'
gem 'beefcake', '1.1.0.pre1'

# Libraries
####################

gem 'httparty'

group :development, :test do
  gem 'sqlite3' # SQLite3 DB
end

group :development do
  gem 'awesome_print'
  gem 'better_errors' # Better Errors
  gem 'binding_of_caller' # Better Debugging
  gem 'quiet_assets' # Shhh.. we don't need to see the assets
  gem 'pry-byebug'
end

group :production do
  gem 'puma'
  gem 'pg' # Postgresql DB
  gem 'rails_12factor' # Heroku asset handler
  gem 'raygun4ruby' # Off-site logging Raygun.io
end

## Views
####################

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails' # jQuery
gem 'turbolinks' # AJAXED Page Gets
gem 'jbuilder', '~> 1.2'# JSON APIs with ease
gem 'tzinfo-data', platforms: [:mingw, :mswin] # Rails Core Windows Dependency, Provides Time Zone Info

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
