# README

# アプリケーション名
Syukies

 # アプリケーション概要
 恋人との思い出を記録。特典をつけて共有できます。思い出を記録して週間ごとのスコアを「通知表」というもので表示することができるコミュニケーションアプリです。
 
 # URL
 https://syukies0001.herokuapp.com/
 
 # テスト用アカウント
 未設定
 
 # 利用方法
 ・サインアップでアカウントを作る
 ・postまたは「今日のしゅきぴは？」から投稿を行う
 ・一週間経過すると通知表が生成され、ダウンロードできる
 
 #　アプリケーションを作成した背景
 昨今の若いカップル向けに、1対1で取るコミュニケーションにより深みを持たせる意図で
 且つ年齢層も10代~20代前半をターゲットにするため、ポップな見た目に


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| syuki_name         | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile            | text   | null: false |
| since              | text   | null: false |

## comments テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| content            | text   | null: false |
| syukie             | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |


## syukies テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| point  | integer    | null: false |
| diary  | text       |   |
| date   | integer    | null: false |
