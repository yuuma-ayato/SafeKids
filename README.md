# <font color="Blue">あんしんキッズ</font>
## 病児保育施設ネット予約サービス
<img width="1347" alt="あんしんキッズ" src="https://user-images.githubusercontent.com/63707386/95640302-1dd9ee00-0ad7-11eb-832d-97f0ea6a8dea.png">

### URL
[https://ansinkids.work/](https://ansinkids.work/)

# 概要
病児保育とは仕事を休んで看病するのが難しいときに子供を預かってもらえる制度です。
親にとってはとてもありがたい制度ですが、現状では利用までに以下のような手続きが必要です。
1. 事前登録
  * 役所窓口で事前に利用者登録をする。子供の問診を行う。
2. 連絡（仮予約）
  * 利用希望の前日までに役所に電話し空き状況を確認し、仮予約を行う。
3. 受診
  * 医療機関で診察を受け、診療情報提供書を発行してもらう。
4. 利用申込み
  * 利用前日までに役所窓口で本予約の手続きをする。
5. 利用
  * 保育士に子供の状況を伝えた上で預ける。後日、市役所から振込用紙が届くので、料金を支払う。\
上記のように受付時間内に仮予約の電話をしたり、前日までに役所へ行って本予約の手続きをしなければならない等、実際に利用するのが難しい仕組みになっています。\
周りの友人達からも、利用したいけど手続きが大変、仕事が忙しくて申込みに行く時間が無いといった声を聞き、\
病児保育を便利に利用するサービスを作りたいと考え、開発致しました。

# 機能における見所
**実際の行政事務の手続きを意識**
* サービスに関わるユーザーを３種類に分けて、それぞれ必要な機能を作成しました。
  * 保護者：病児保育施設の予約 / 保護者（連絡先）の登録 / お子様情報の登録
  * 窓口担当者：予約の検索 / 予約の確定 / 保育施設の登録（管理者）
  * 保育士：本予約の検索
* 予約詳細より保護者の連絡先を表示
  *　お子様の名前だけではなく、登録されている連絡先も自動的に表示されるよう実装しました。

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
  * ユーザーの登録、編集、削除ができる。
  * 保育施設の登録、編集、削除ができる。
## 検索機能
  * フリーワード、ステータス（仮・本予約）により絞り込みをする。
## マイページ機能
  * ユーザーの情報を表示する。
## コメント機能
  * 予約についてコメントができる。
  * Ajaxを使うことでページ遷移せずに作成できる。

## 設計
[カタログ設計](https://docs.google.com/spreadsheets/d/10yvr_-g7P8p7djihJd5azVzyCWWB0n8XN4H2jfQ5ynE/edit?usp=sharing)\
[テーブル定義](https://docs.google.com/spreadsheets/d/1NtphrLYvBmN8jrOSotKD8EiXoRDo84038nifjXmbqKY/edit?usp=sharing)\
[ER図](https://drive.google.com/file/d/1K6tKCB2e4J1Thjdg9z7wN2ZnjQqBvH7G/view?usp=sharing)\
[画面遷移図](https://docs.google.com/spreadsheets/d/1Co6MR_8zaoVBHPAL6_bVkObPN5vsngJDSjferR0XAp8/edit?usp=sharing)\
[ワイヤーフレーム](https://docs.google.com/spreadsheets/d/1vpvGSbl4zREDn6Dq-eJ7eC-_Wx68nhWOeGWLzO52O5M/edit?usp=sharing)\

# 今後の課題
**Google Maps APIの利用**
保育施設の所在地を表示する事で、予約の際に保育施設までの行き方を調べる手間を無くし、保護者の負担を減らしたいと考えています。
## 使用した主なGem
* ransack
* devise
* kaminari
* carrierwave
* mini_magick
* rspec-rails
* capybara
