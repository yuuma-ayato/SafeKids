source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4'

# ログイン機能
gem 'devise'
gem 'devise-i18n'
gem 'devise-bootstrap-views', '~> 1.0'
# bootstrap導入
gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
# 画像アップロード
gem 'carrierwave'
gem 'mini_magick'
# 検索機能
gem 'ransack'
# seedデータ作成
gem 'gimei'
gem 'faker'
# アイコンデフォルト
gem 'font-awesome-sass'
# ページネーション
gem 'kaminari'
# AWSデプロイ
gem 'fog-aws'
gem 'dotenv-rails'
gem 'unicorn' # アプリケーションサーバのunicorn
gem 'mini_racer', platforms: :ruby # デプロイ時に必要
gem 'ed25519'
gem 'bcrypt_pbkdf'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
# gem 'sass-rails', '~> 5.0'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'capistrano', '3.6.0' # capistranoのツール一式
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener_web'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # gem 'chromedriver-helper'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
