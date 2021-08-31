[![Codacy Badge](https://app.codacy.com/project/badge/Grade/37165033253842d78006d961e892ec02)](https://www.codacy.com/gh/nejdetkadir/rails-boilerplate/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nejdetkadir/rails-boilerplate&amp;utm_campaign=Badge_Grade)

# Rails Boilerplate
A starter template for [Ruby on Rails](https://rubyonrails.org/) with [Vue](https://vuejs.org/)

![logo](doc/logo.png)

# Features
- [Vue](https://vuejs.org/) and [vuex](https://vuex.vuejs.org/) integrations
- Custom error pages
- [I18n support](https://guides.rubyonrails.org/i18n.html)
  - English
  - Turkish
- Installed Gems
  - [slim](https://github.com/slim-template/slim)
  - [ruby-progressbar](https://github.com/jfelchner/ruby-progressbar)
  - [active_link_to](https://github.com/comfy/active_link_to)
  - [humanize](https://github.com/radar/humanize)
  - [kaminari](https://github.com/kaminari/kaminari)
  - [searchkick](https://github.com/ankane/searchkick)
  - [simple_form](https://github.com/heartcombo/simple_form)
  - [sitemap_generator](https://github.com/kjvarga/sitemap_generator)
  - [rails-settings-cached](https://github.com/huacnlee/rails-settings-cached)
  - [carrierwave](https://github.com/carrierwaveuploader/carrierwave)
  - [minimagick](https://github.com/minimagick/minimagick)
  - [devise](https://github.com/heartcombo/devise) with omniauths
    - [omniauth-google-oauth2](https://github.com/zquestz/omniauth-google-oauth2)
    - [omniauth-github](https://github.com/omniauth/omniauth-github)
    - [omniauth-facebook](https://github.com/simi/omniauth-facebook)
  - [better_errors](https://github.com/BetterErrors/better_errors)
  - [faker](https://github.com/faker-ruby/faker)
  - [friendly_id](https://github.com/norman/friendly_id)
  - [pundit](https://github.com/varvet/pundit)
  - [font-awesome-sass](https://github.com/FortAwesome/font-awesome-sass)
  - [recaptcha](https://github.com/ambethia/recaptcha)
  - [whenever](https://github.com/javan/whenever)

# Installation
## Prerequisites
- [Ruby](https://rvm.io/)
- [NodeJS (>=10.x)](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
- [Yarn](https://yarnpkg.com/lang/en/docs/install/#debian-stable)
- [PostgreSQL](https://www.postgresql.org/download/)
- [ImageMagick](https://imagemagick.org/) `sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev`

## Installation
- Install GEM dependencies:

  ```bash
  bundle install
  ```

- Install asset dependencies:

  ```bash
  yarn install
  ```

- Create database, migrate tables and run the seed data:

  ```bash
  rails db:create
  rails db:migrate
  rails db:seed
  ```

- If you are setting up again, when you already have previous databases:

  ```bash
  rails db:reset
  ```
- For dropping database
  ```bash
  rails db:drop
  ``` 

# LICENSE
```
GNU GENERAL PUBLIC LICENSE Version 3
```