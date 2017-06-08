
# DB設計

**users table**

|column|type|options|
|:-:|:-:|:-:|
|name|string|index: true, null: false, unique: true|
|mail|string|null: false, unique: true|

Association
* has_many :odais
* has_many :bokete
has_many :comments

**bokes table**

|column|type|options|
|:-:|:-:|:-:|
|body|string|index: true, null: false|
|user_id|integer|null: false|
|odai_id|integer|null: false|

Association
* belongs_to :users
* belongs_to odai
* has_many : comment



**odais**

|column|type|options|
|:-:|:-:|:-:|
|image|string|null: false|
|user_id|integer|null: false|

Assosiation
* belongs_to user
* has_many boke

**comments**

|column|type|options|
|:-:|:-:|:-:|
|text|string||
|user_id|integer|null: false|
|boke_id|integer|null: false|


Assosiation
* belongs_to user
* belongs_to boke
