source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'cssbundling-rails'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 4.1'
gem 'rails', '7.0.2.4'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'sprockets-rails', '3.4.2'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.1.0'
  gem 'rubocop-rspec', require: false
  gem 'rails-controller-testing'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.13.0', require: false
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
