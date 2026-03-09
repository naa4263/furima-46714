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
|mail                   |string   | null: false|
|password               |string   | null: false|
|encrypted_password     |string   | null: false|
|last_name              |string   | null: false|
|first_name             |string   | null: false|
|birthday               |string   | null: false|
|month                  |string   | null: false|
|day                    |string   | null: false|

## items名
|Column             |Type     |     Options|
|id                 |string   | null: false|
|image              |string   | null: false|
|goods              |string   | null: false|
|explanation        |text     | null: false|
|category           |string   | null: false|
|situation          |string   | null: false|
|delivery           |string   | null: false|
|region             |string   | null: false|
|days               |string   | null: false|
|price              |string   | null: false|
|user_id            |string   | null: false|foreign_key :true|

## order名
|Column             |Type     |     Options|
|id                 |string   | null: false|
|user_id            |string   | null: false|foreign_key :true|

## addresses名
|Column             |Type     |     Options|
|postalcode         |string   | null: false|
|prefecture         |string   | null: false|
|city               |string   | null: false|
|build              |string   | null: false|
|phonenumber        |string   | null: false|
|order_id           |string   | null: false|foreign_key :true|

## comments名
|Column             |Type       |     Options|
|user_id            |string     | null: false|foreign_key :true|
|time               |datetime   | null: false|