# README

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

## users名
|Column                 |Type     | Options|
|nickname               |string   | null: false|
|email                  |string   | null: false|
|encrypted_password     |string   | null: false|
|last_name              |string   | null: false|
|first_name             |string   | null: false|
|last_name_kana         |string   | null: false|
|first_name_kana        |string   | null: false|
|birthday               |date     | null: false|

- has_many :items
- has_many :orders

## items名
|Column             |Type     |     Options|
|image              |string   | null: false|
|product            |string   | null: false|
|explanation        |text     | null: false|
|category           |string   | null: false|
|situation          |string   | null: false|
|delivery_fee       |string   | null: false|
|region             |string   | null: false|
|days               |string   | null: false|
|price              |string   | null: false|
|user_id            |string   | null: false|foreign_key :true|

- belongs_to :user
- belongs_to :orders

## order名
|Column             |Type     |     Options|
|item_id            |string   | null: false|
|user_id            |string   | null: false|foreign_key :true|

- belongs_to :user
- belongs_to :addresses

## addresses名
|Column             |Type     |     Options|
|postalcode         |string   | null: false|
|region             |string   | null: false|
|city               |string   | null: false|
|build              |string   |
|street             |string   | null: false|
|phonenumber        |string   | null: false|
|order_id           |string   | null: false|foreign_key :true|

- belongs_to :orders