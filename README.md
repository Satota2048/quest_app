# アプリケーション名
「QUEST」

# サンプル画像

![サンプル画像]https://github.com/Satota2048/quest_app/blob/master/QUEST%E3%82%A2%E3%83%95%E3%82%9A%E3%83%AA%E7%94%BB%E5%83%8F.jpeg

# アプリケーション概要
身近なものから、将来の夢まで。どんな内容でも利用することができるToDoアプリです。

## URL
https://quest-app-34998.herokuapp.com/


##### ↑現在の技術でできる部分まで反映。現在は他言語の習得及び業界知識の学習中。

http://35.72.231.221/　
←現在エラー解決中

# 利用するためのキーなど

## basic-auth 

ユーザー   :admin
パスワード  :2222

## ログイン用ユーザー

メールアドレス　: sample@sample
パスワード　　 : sample3ple

現在試用不可アプリ　→
メールアドレス  : ika@ika
パスワード     :  ika1kan

# 利用方法

ユーザーにはログインのための最低限の個人情報を登録していただき、その後は一般的なToDoアプリと同様に使用していただけます。
具体的には、「クエスト作成」をクリックした後に、どのような課題を、何のために、どのような手段で、いつまでに達成し、その結果何を得られるのかを設定し、達成するというものです。
RPGゲーム感覚で、人生の課題・問題に取り組んでみてください。

# 目指した問題解決

自分には、「やってみたいこと」が日々の生活でたくさん浮かんでくることがありましたが、そのまま忘れてしまうこともよくありました。
そうした夢を忘れずに、失敗したとしてもその原因を捉えて再挑戦する大変さを和らげることができるようなアプリケーションを作りたいという自分のニーズを満たすことを目的にしました。


# 作成したデータベース

## users

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| kana_first_name    | string | null: false               |
| kana_last_name     | string | null: false               |
| birth              | date   | null: false               |

### Association
- has_many    :my_quests
- belongs_to  :profile

## quests

| Column                | Type          | Options                        |
| --------------------- | ------------- | ------------------------------ |
| category_id           | integer       | null: false                    |
| title                 | string        | null: false                    |
| explain               | text          | null: false                    |
| limit                 | date          | null: false                    |
| achievement_purpose   | string        | null: false                    |
| achievement_condition | integer       | null: false                    |
| self_reward           | string        |                                |
| self_penalty          | string        |                                |
| order_condition       | string        |                                |
| detail_text           | integer       |                                |
| user                  | references    | null: false, foreign_key: true |

## Association
- belongs_to :user
- has_one    :user_judge

## profiles

| Column        | Type          | Options                        |
| ------------- | ------------- | ------------------------------ |
| my_number     | integer       |                                |
| status_id     | integer       | null: false                    |
| qualification | string        |                                |
| postal_number | string        | null: false                    |
| prefecture_id | integer       | null: false                    |
| municipality  | string        | null: false                    |
| address       | string        | null: false                    |
| building_name | string        |                                |
| phone_number  | string        | null: false                    |
| user          | references    | null: false, foreign_key: true |
| my_quest      | references    | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :my_quest
- has_one :guild

## guilds

| Column        | Type          | Options                        |
| ------------- | ------------- | ------------------------------ |
| guild_name    | string        | null: false                    |
| category_id   | integer       | null: false                    |
| member        | integer       | null: false                    |
| public_quest  | references    | null: false, foreign_key: true | 
| user          | references    | null: false, foreign_key: true |

## Association
- has_many   :counters
- belongs_to :profile

## counters

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| guild  | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :item
- has_one :public_quest

## public_quests

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| comment      | string     | null: false                    |
| request_id   | string     | null: false                    |
| quest        | references | null: false,foreign_key: true  |
| counter      | references | null: false,foreign_key: true  |
