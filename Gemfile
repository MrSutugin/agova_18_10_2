source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'ancestry'
gem 'bcrypt'
gem 'blueprinter'
gem 'bootsnap', require: false
gem 'friendly_id', '~> 5.4.0'
gem 'image_processing', '~> 1.2'
gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'rails-i18n', '~> 7.0.0'
gem 'redis', '~> 4.0'
gem 'rodauth-i18n', '~> 0.4'
gem 'rodauth-rails', '~> 1.0'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'trestle'
gem 'trestle-auth'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem 'amazing_print'
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'erb_lint', require: false
  gem 'letter_opener'
  gem 'rename'
  gem 'web-console'
end

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'launchy'
  gem 'syntax_suggest'
end

group :test do
  gem 'capybara'
  gem 'minitest-ci', require: false
  gem 'selenium-webdriver'
  gem 'shoulda-context'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end
