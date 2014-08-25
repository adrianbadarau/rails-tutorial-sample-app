source 'https://rubygems.org'

#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.0'
gem 'pg'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'rb-notifu'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

gem 'bcrypt-ruby', '~> 3.0.0'
gem 'sass-rails'
gem 'sprockets', '2.11.0'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'rails_12factor'
end