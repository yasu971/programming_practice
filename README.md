
## Proto Spaceを参考にしてます。
## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| Nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association

- has_many :comments
- has_many :prototypes

## questions テーブル 問題は、JsvaScript!?

| Column     | Type         | Options     |
| ---------- | ------------ | ----------- |
| title      | string       | null: false |
| content    | text         | null: false |
| sentaku    | text         | null: false |
| user       | references   |             |

- belongs_to :users
- has_many :comments

## comments テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| text      | text       | null: false |
| user      | references |             |
| question  | references |             |

### Association

- belongs_to :users
- belongs_to :questions