# README

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

| Column          | Type          | Options                        |
| --------------- | ------------- | ------------------------------ |
| title           | string        | null: false                    |
| explain         | text          | null: false                    |
| category_id     | integer       | null: false                    |
| status_id       | integer       | null: false                    |
| conditions      | string        | null: false                    |
| status_permit   | string        | null: false                    |
| explain         | text          | null: false                    |
| limit           | date          | null: false                    |
| achievement     | string        | null: false                    |
| treat_myself    | string        |                                |
| reset_time_id   | integer       | null: false                    |
| reward          | integer       |                                |
| memo            | text          |                                |
| user            | references    | null: false, foreign_key: true |

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