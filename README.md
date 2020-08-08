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
  * メールアドレス、パスワード、姓、名、ふりがなは必須
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
* 定員機能
  * 保育施設の定員数までしか予約できないようにする。
* コメント機能
  * 予約についてコメント（保護者連絡、保育士メモ）を付けられる。

## カタログ設計
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/e/2PACX-1vQYwK1DQiQQlIGAzNz7e3t_n5gY4yb8qLklZ_m1GNVo8pI0fyQUl5iM_ByoCWYTvEIszN8AFs-w3FWq/pubhtml)
## テーブル設計
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/e/2PACX-1vS1bM0FdGiLL4AFxWcKxEAeG_sLesM7L7oybULngGx01-Z3Q2XOcDdOyjP7f0BS7bzU8a8ZPBClpTVP/pubhtml)
## ER図
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/e/2PACX-1vSGh9ZbI13nk2tABLpcIHsWl-35ZWgjYB7axI2gdL3gII4ijK0fWHk4CUQ--nB_l7ZdBoRMC-cC0LYs/pubhtml)
## 画面遷移図
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/e/2PACX-1vRCyDOkUfEYT6or1LJpSPtM8acGCI_YK1plUROx55dqjTvoKz_LyVwexOZBlL5V9j75foLuD10Nr-sl/pubhtml)
## ワイヤーフレーム
[Googleスプレッドシート](https://docs.google.com/spreadsheets/d/e/2PACX-1vSv7g6FhFNrHIE1v_HJBOzzetbvIbcV5Z2H1An5erYerVEMZHB4tzrIZ0AW6zX6B8Drh7rYdb9JuXt_/pubhtml)

## 使用予定Gem
* ransack
* kaminari
* carrierwave
* mini_magick
* rspec-rails
* capybara
