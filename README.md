# あんしんキッズ
## 病児保育施設ネット予約サービス
<img width="1347" alt="あんしんキッズ" src="https://user-images.githubusercontent.com/63707386/95640302-1dd9ee00-0ad7-11eb-832d-97f0ea6a8dea.png">

### URL
[https://ansinkids.work/](https://ansinkids.work/)

# 解決したい課題
病児保育とは仕事を休んで看病するのが難しいときに子供を預かってもらえる制度です。
親にとってはとてもありがたい制度ですが、利用するには受付時間内に仮予約の電話をしたり、前日までに役所へ行って本予約の手続きをしなければならない等、現状では利用するのが難しい仕組みになっています。

# コンセプト
あんしんキッズは煩雑な手続きをオンライン化することで保護者と事務担当者の負担を軽減します。\
そして安心して子育てできる社会に貢献します。

# 使用技術
* Ruby 2.6.3
* Ruby on Rails 5.2.4
* PostgreSQL 12.4
* Docker 19.03.13/docker-compose
* Circle CI
* AWS (EC2 / S3 / Route53 / ELB / ACM)
* jQuery
* Bootstrap4
* Nginx
* Github (Github Flow)
* RSpec



# 機能一覧
## 認証機能
* ログイン、ユーザー登録
* ゲストログイン機能
  * 保護者、窓口担当者、保育士の３つの異なるユーザータイプでログイン可能
  * ゲストユーザーは編集・削除不可
## 予約機能
  * 予約のCRUD / 詳細より保護者の連絡先を表示
## 保育施設機能
  * 保育施設のCRUD
## 窓口担当者機能
  * 予約の確定（本予約）を行う。
## 保育士機能
  * 確定された本予約の一覧を確認する。
## 管理者機能
  * ユーザーの作成、編集、削除ができる。
  * 保育施設の作成、編集、削除ができる。
## 検索機能
  * フリーワード、ステータス（仮・本予約）により絞り込みをする。
## マイページ機能
  * ユーザーの情報を表示する。
## コメント機能
  * 予約についてコメントができる。
  * Ajaxを使うことでページ遷移せずに作成できる。

## 設計
[カタログ設計](https://docs.google.com/spreadsheets/d/10yvr_-g7P8p7djihJd5azVzyCWWB0n8XN4H2jfQ5ynE/edit?usp=sharing)
[テーブル定義](https://docs.google.com/spreadsheets/d/1NtphrLYvBmN8jrOSotKD8EiXoRDo84038nifjXmbqKY/edit?usp=sharing)
[ER図](https://drive.google.com/file/d/1K6tKCB2e4J1Thjdg9z7wN2ZnjQqBvH7G/view?usp=sharing)
[画面遷移図](https://docs.google.com/spreadsheets/d/1Co6MR_8zaoVBHPAL6_bVkObPN5vsngJDSjferR0XAp8/edit?usp=sharing)
[ワイヤーフレーム](https://docs.google.com/spreadsheets/d/1vpvGSbl4zREDn6Dq-eJ7eC-_Wx68nhWOeGWLzO52O5M/edit?usp=sharing)

## 使用Gem
* ransack
* devise
* kaminari
* carrierwave
* mini_magick
* rspec-rails
* capybara
