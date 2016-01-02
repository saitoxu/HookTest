# HookTest

[Redmine3.2プラグイン開発入門](http://qiita.com/saitoxu/items/75087ec8d45a768dbf64)でサンプルとして取り上げているプラグインです。

## Feature
チケットの参照画面で簡単なテストを実施できるプラグインです。

## How to use
pluginsディレクトリに配置し、マイグレーション実施後、Redmineを再起動してください。

```
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
```
