# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4'

# ログイン機能
gem 'devise'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'devise-i18n'
# bootstrap導入
gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
# 画像アップロード
gem 'carrierwave'
gem 'mini_magick'
# 検索機能
gem 'ransack'
# seedデータ作成
gem 'faker'
gem 'gimei'
# アイコンデフォルト
gem 'font-awesome-sass'
# ページネーション
gem 'kaminari'
# AWSデプロイ
gem 'bcrypt_pbkdf'
gem 'dotenv-rails'
gem 'ed25519'
gem 'fog-aws'
gem 'mini_racer', platforms: :ruby # デプロイ時に必要
gem 'unicorn' # アプリケーションサーバのunicorn

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
# gem 'sass-rails', '~> 5.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'sassc-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  # capistranoのツール一式
  gem 'capistrano', '3.6.0'
  gem 'capistrano3-unicorn'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

group :development do
  gem 'letter_opener_web'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails-erd'
  gem 'ruby-graphviz'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # gem 'chromedriver-helper'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
