# Rails Boilerplate
A starter template for [Ruby on Rails](https://rubyonrails.org/)

# Installed Gems
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