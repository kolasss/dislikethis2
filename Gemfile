source 'https://rubygems.org'
gem 'rails', '3.2.8'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "bootstrap-sass", ">= 2.1.0.0"
gem "omniauth", ">= 1.1.1"
gem "omniauth-facebook"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"
gem "quiet_assets", ">= 1.0.1", :group => :development

gem "paperclip", "~> 3.0"

group :production do
	gem 'pg'
	gem 'thin'
end

group :test do
  gem "capybara", ">= 1.1.2"
	gem "email_spec", ">= 1.2.1"
end

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", ">= 2.11.0"
	gem "factory_girl_rails", ">= 4.1.0"
end