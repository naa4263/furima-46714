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
|Column                |Type         |     Options|
|product               |string       | null: false|
|explanation           |text         | null: false|
|category_id           |integer      | null: false|
|situation_id          |integer      | null: false|
|delivery_fee_id       |integer      | null: false|
|prefecture_id         |integer      | null: false|
|days_id               |integer      | null: false|
|price                 |integer      | null: false|
|user                  |references   | null: false|foreign_key :true|

- belongs_to :user
- has_one :order

## orders名
|Column             |Type         |     Options|
|item               |references   | null: false|foreign_key :true|
|user               |references   | null: false|foreign_key :true|

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses名
|Column                |Type        |     Options|
|postal_code           |string      | null: false|
|prefecture_id         |integer     | null: false|
|city                  |string      | null: false|
|build                 |string      |
|street                |string      | null: false|
|phonenumber           |string      | null: false|
|order                 |references  | null: false|foreign_key :true|

- belongs_to :order