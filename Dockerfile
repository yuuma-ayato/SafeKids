FROM ruby:2.6.5
# リポジトリを更新し依存モジュールをインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim && rm -rf /var/lib/apt/lists/*

# ルート直下にSafeKidsという名前で作業ディレクトリを作成（コンテナ内のアプリケーションディレクトリ）
WORKDIR /SafeKids

# ホストのGemfileとGemfile.lockをコンテナにコピー
ADD Gemfile /SafeKids/Gemfile
ADD Gemfile.lock /SafeKids/Gemfile.lock

# bundle installの実行
RUN gem install bundler
RUN bundle install

# ホストのアプリケーションディレクトリ内をすべてコンテナにコピー
ADD . /SafeKids
