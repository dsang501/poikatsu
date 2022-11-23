# アプリケーション名
  ポイ活

# アプリケーション概要
  ポイント活動に役立つ情報を収集・管理できるアプリケーションです。

# URL
  https://poikatsu.tk

# 利用方法
* 管理者側  
&thinsp;会員の詳細情報確認や編集、ステータスの変更が行えます。  
&thinsp;新規カードの追加、既存カード情報の編集ができます。  
  
* 利用者側  
&thinsp;おすすめカード一覧や検索フォームより、気になるカードの年会費や還元率の詳細情報がチェックできます。  
&thinsp;会員登録をする事でお気に入りカードの登録ができます。  
&thinsp;マイページから登録したカードの確認や、会員情報の編集ができます。

# 目指した課題解決
ポイ活サイトが多数あり情報が混在する中で、ユーザーが知りたい情報を素早く検索する事ができ、  
お気に入りしたカードはマイページよりアクセスできるので、もう一度見たい時に検索する手間を省く事が出来ました。
お気に入り数に応じておすすめ順位が変わるので、人気のカードがタイムリーに把握できます。

# 使用技術
* Ruby 2.7.6
* Ruby on Rails 6.1.6
* MySQL 8.0.31
* AWS
* VPC
* EC2
* ACM
* Route53
* RSpec
* Rubocop

# 機能一覧
* ユーザー登録、ログイン機能(devise)

* お気に入り機能
* おすすめ機能
* 検索機能
* カード追加・編集
* 会員詳細情報・編集

# ER図
  ![ER図](https://user-images.githubusercontent.com/80367441/200984102-3fd646f5-6900-42cf-b337-b3057e7f20ac.png)

# インフラ構成図
  ![インフラ構成図](https://user-images.githubusercontent.com/80367441/203473980-9b3f6c6a-0d24-4c32-b1fc-b5f10f5895ac.png)

# 開発環境
  **Ruby on Rails**

# インストール
  ```
  $ git clone https://github.com/dsang501/poikatsu
  $ cd poikatsu
  $ sh setup.sh
  $ ~do anything~
  ```

# 推薦環境
  Ruby 2.7 以降 Rails 6.1 以降
