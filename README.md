# Goen

日本語教師と日本語学習者のためのマッチングアプリです

## 概要
日本語教師が2~3分の体験授業紹介動画を投稿します。<br>
それを見た学習者が予約ページで体験授業を予約することができます。<br><br>

動画一覧機能<br>
動画投稿機能<br>
動画削除機能<br>
動画編集機能<br>
体験授業予約機能<br>
予約削除機能<br>
ユーザー登録/ログイン機能<br>
検索機能<br>
メッセージ機能<br>

## 本番環境
https://goen-32399.herokuapp.com/<br>
テストアカウント　　<br>

## 制作背景
日本語教師と学習者をマッチングするwebサイト・アプリは存在しますが、特定の教師に人気が集中してしまい、資格や経験がないと難しい状況なので、未経験でもチャレンジできる環境を作りたくて、このアプリを制作しました。
本アプリは教師歴や資格などを記載せずフラットな状態で、純粋に現在の体験授業の実力で勝負できる環境を提供しています。

## DEMO

## 工夫したポイント
先生が2~3分の体験授業紹介の動画を投稿することにより、学習者に興味を持ってもらえるように工夫しました。<br>
トップページに「Goenとは？」「先生へ」「学習者へ」という説明ページを作り、このアプリの目的・使い方がユーザーに伝わるようにしました。<br>
学習者が体験授業を予約する際に、先生の予定が緑色で表示されるようにしました。<br>
日本語初級者でもわかるように、部分的にひらがな表記にしました<br>
学習者が先生にメッセージを送れるようにメッセージ機能をつけました<br>
学習者が動画を探しやすくするために検索機能をつけました<br>

## 使用技術(開発環境)
ruby 2.6.5<br>
Rails 6.0.3.6
HTML/CSS<br>
Javascript/jQuery

## 課題や今後実装したい機能

## DB設計

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

#### Association

- has_many :tweets
- has_many :comments
- has_many :reservations


## tweets テーブル

| Column  | Type     | Options      |
| ------- | -------- | ------------ |
| text    | string   | null: false  |
| video   | string   | null: false  |
| user_id | integer  | null: false  |
| level   | string   | null: false  |


### Association

- belongs_to :user
- has_many :comments
- has_many :reservations


##  reservationsテーブル

| Column     | Type       | Options   |
| ---------- | ---------- | --------- |
| content    | text       |           |
| start_time | datetime   |           |
| end_time   | datetime   |           |
| level      | string     |           |
| user_id    | integer    |           |
| tweet_id   | integer    |           |
| schedule   | text       |           |

### Association

- belongs_to :user
- belongs_to :tweet


## comments テーブル

| Column   | Type       | Options |
| -------- | ---------- | ------- |
| text     | text       |         |
| user_id  | integer    |         |
| tweet_id | integer    |         |

### Association

- belongs_to :tweet
- belongs_to :user









