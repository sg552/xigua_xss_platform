# 说明

Xigua XSS platform, a XSS platform based on Rails 6.
为啥叫xigua？ 因为西瓜x开头。

features:

- 记录XSS结果, 并且通过短信提示
- 有后台展示

## 需要

- 一个短域名
- 阿里云短信收发api, secret
- linux (ubuntu 18, mysql)

## 部署(需要具备基本的rails知识)

- ruby 2.5.8
- node > 14
- yarn
- mysql

- gem install bundler
- bundle install --verbose
- cp config/database.yml.example config/database.yml
- ..以及 log4r,  application.yml等
- bundle exec rake db:create
- bundle exec rake db:migrate
- bundle exec rails webpacker:install
- RAILS_ENV=production bundle exec rake assets:precompile

开发模式：
- bundle exec rails server

生产模式：
- bundle exec puma  -e production

即可


## 用法

访问：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095859.png)

列表：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095440.png)

默认页面是 一个假的 500 页面：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095607.png)

可以登录：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095632.png)

支持短信：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095726.png)

## 记得及时把注册功能去掉哦~
