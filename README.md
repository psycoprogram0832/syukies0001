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
 昨今の若いカップル向けに、1対1で取るコミュニケーションに、より深みを持たせる意図で
 且つ年齢層も10代~20代前半をターゲットにするため、ポップな見た目にこだわりました。
 若いカップルにとって、コミュニケーションを撮る小さなきっかけであったり、記念日や思い出を彩ってくれるアプリケーションを作りたいと思い制作しました。
 
 # 洗い出した要件
 https://docs.google.com/spreadsheets/d/1gEF9F1fxHJBbanGxZ3G--AopwZhS2Nlh0tVrVafQWa8/edit#gid=982722306
 
 #　実装した機能についての画像やGIFおよびその説明
 
 # 実装予定の機能
 現在は週間の集計しか出ない状況ですが、月間や、記念日に特別な表示に変わる機能。
 定期イベントの開催を実装予定。
 
 #　データベース設計
 [![Image from Gyazo](https://i.gyazo.com/872ffd25ddb140fadd691e2ab3d79b3c.png)](https://gyazo.com/872ffd25ddb140fadd691e2ab3d79b3c)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/1e72546b3c7a35fdab3505716187bab6.png)](https://gyazo.com/1e72546b3c7a35fdab3505716187bab6)

#開発環境
・HTML/CSS、javascript
・Ruby,RubyonRails
・heroku/aws
・r-spec
・VScode
・GitHub

# ローカルでの操作方法

#　工夫したポイント
ポップな印象を与えるように色合いを優しい色にしました。それでいてクールな印象も与えれるようなフォントやボタンの装飾をしました。
とにかく、世にまだ出ていないようなアイデアを自分なりに模索して作りました。
ネタ的ではありますが、入口はポップで「ちょっと試しに使いたい」と思わせるような、そして使っていくごとにエモーションの部分に刺激を与えるようなアプリケーションを目指しました。
マネタイズできるように広告がスライドで出る枠も自作しました。



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
