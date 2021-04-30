source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# backend
# =========================================
ruby '2.7.1'
gem 'pg'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3'
gem 'sorcery'
# =========================================

# frontend
# =========================================
gem 'bulma-rails', '~> 0.9.0'
gem 'haml-rails'
gem 'jbuilder', '~> 2.7'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# =========================================

# other
# =========================================
gem 'annotate'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# gem 'redis', '~> 4.0'
# gem 'image_processing', '~> 1.2'
# =========================================

group :development, :test do
  # rubocop
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'

  gem 'bullet'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'dotenv-rails'
  gem 'haml_lint'
  gem 'listen', '~> 3.2'
  gem 'rack-mini-profiler', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
