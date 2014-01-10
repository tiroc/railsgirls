source 'https://rubygems.org'
ruby '2.1.0'

gem 'rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'
# Use SCSS for stylesheets
gem 'sass-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'bootstrap-sass-rails', '~> 2.3.2.0'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platforms => :ruby

gem 'settingslogic'
gem 'rails-i18n'
gem 'redcarpet'
gem 'redcarpet'
gem 'omniauth'
gem 'omniauth-identity'
gem 'slim-rails'
gem 'rails-i18n'


group :production do
  # heroku use PostgreSQL
  gem 'pg'

  # see https://devcenter.heroku.com/articles/rails-integration-gems
  gem 'rails_12factor'

  # heorku recommended, see https://devcenter.heroku.com/articles/rails4-getting-started
  gem 'unicorn'
end

group :development do
  gem 'faker'
  gem 'sqlite3'
  gem 'debugger'
  gem 'quiet_assets'
  gem 'pry'
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'thin'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
