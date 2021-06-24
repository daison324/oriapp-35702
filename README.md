# README

# テーブル設計

## users テーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| nickname           | string | null: false  |
| email              | string | unique: true |
| encrypted_password | string | null: false  |
| first_name         | string | null: false  |
| last_name          | string | null: false  |
| first_name_kana    | string | null: false  |
| last_name_kana     | string | null: false  |
| birthday           | date   | null: false  |

Association
has_many :events
has_many :comments
has_many :orders




## events テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| event_title      | string     | null: false                    |
| text             | text       | null: false                    |
| group_name       | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

Association
belongs_to :user
has_one :order
has_many :comments
has_one_attached :image


## places テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| place         | references | null: false, foreign_key: true |
| group_name    | references | null: false, foreign_key: true |

Association
belongs_to :user
belongs_to :event
has_one :address
