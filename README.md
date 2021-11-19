# 说明

Xigua XSS platform, a XSS platform based on Rails 6.
为啥叫xigua？ 因为西瓜x开头。

features:

- 记录XSS结果, 并且通过短信提示
- 有后台展示

## 需要

- 一个短域名
- 一个短信收发token

## 部署

- ruby 2.5.8
- yarn
- mysql


- gem install bundler
- bundle install --verbose
- cp config/database.yml.example config/database.yml
- ..以及 log4r,  settings.yml等
- bundle exec rake db:create
- bundle exec rake db:migrate
- bundle exec rails webpacker:install
- bundle exec rails server

即可

