source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# backend
# =========================================
ruby '2.7.1'
gem 'rails', '~> 6.0.3'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 4.1'
# =========================================


# frontend
# =========================================
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'haml-rails'
gem 'jbuilder', '~> 2.7'
# =========================================


# other
# =========================================
gem 'annotate'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# gem 'redis', '~> 4.0'
# gem 'image_processing', '~> 1.2'
gem 'sorcery'
# =========================================

group :development, :test do
  # rubocop
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'pry-rails'

  gem 'bullet'
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'dotenv-rails'
  gem 'haml_lint'
  gem 'rack-mini-profiler', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
