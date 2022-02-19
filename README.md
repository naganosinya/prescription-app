# 時効

## サイト概要
日々のちょっとした罪（例：ダイエット中なのに爆食いした）に時効を成立させるサイトです。

## バージョン
Ruby: 3.1.0
Ruby on Rails: 6.1.4.4
node.js: 16.13.1

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ gem install bundler
$ bundle install
$ yarn install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:create
$ rails db:migrate
```

最後にRailsサーバーを立ち上げます。

```
$ rails server
```

