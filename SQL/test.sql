--ユーザーテーブルの作成
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT, -- ID, 主キー 
  name TEXT NOT NULL, -- 名前, NULL不可
  email TEXT UNIQUE NOT NULL -- メールアドレス, NULL不可, 一意のものである必要がある。
);
