# あんしんキッズ

# 病児保育施設ネット予約サービス

# 解決したい課題
病児保育とは仕事を休んで看病するのが難しいときに子供を預かってもらえる制度です。
親にとってはとてもありがたい制度ですが、利用するには受付時間内に仮予約の電話をしたり、前日までに役所へ行って本予約の手続きをしなければならない等、現状では利用するのが難しい仕組みになっています。

# コンセプト
あんしんキッズは煩雑な手続きをオンライン化することで保護者と事務担当者の負担を軽減します。\
そして安心して子育てできる社会に貢献します。

# バージョン
Ruby 2.6.3\
Rails 5.2.4

# 機能一覧

* ログイン機能
* ユーザー登録機能
  * メールアドレス、パスワードは必須
* ユーザー編集機能
  * ユーザーの操作をする。
* 予約一覧機能
  * 仮予約、本予約の確認
* 予約の編集・削除機能
  * 予約の情報を操作する。
* 予約の検索
  * フリーワード、ステータス（仮・本予約）により絞り込みをする。
* 管理者機能
  * 全ユーザーの操作（作成、編集、削除）が行えるようにする。
* 窓口担当者機能
  * 予約の確定（本予約）をする。仮予約の一覧を確認する。
* 保育士機能
  * 本予約の一覧を確認する。
* マイページ機能
  * ユーザーの情報を表示する。
* コメント機能
  * 予約についてコメント（保護者連絡）を付けられる。
* ゲストログイン機能
  * 保護者、窓口担当者、保育士の３つの異なるユーザータイプでログイン可能


## カタログ設計
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/10yvr_-g7P8p7djihJd5azVzyCWWB0n8XN4H2jfQ5ynE/edit?usp=sharing)
## テーブル定義
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/1NtphrLYvBmN8jrOSotKD8EiXoRDo84038nifjXmbqKY/edit?usp=sharing)
## ER図
[diagrams.net](https://drive.google.com/file/d/1K6tKCB2e4J1Thjdg9z7wN2ZnjQqBvH7G/view?usp=sharing)
## 画面遷移図
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/1Co6MR_8zaoVBHPAL6_bVkObPN5vsngJDSjferR0XAp8/edit?usp=sharing)
## ワイヤーフレーム
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/1vpvGSbl4zREDn6Dq-eJ7eC-_Wx68nhWOeGWLzO52O5M/edit?usp=sharing)

## 使用予定Gem
* ransack
* devise
* kaminari
* carrierwave
* mini_magick
* rspec-rails
* capybara
