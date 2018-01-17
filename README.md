# Blogine
A lightweight mountable blog engine for Rails.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'blogine', github: 'zernel/blogine', branch: "develop"
```

And then execute:
```bash
$ bundle
```

After that, you can install the migrations by:
```bash
$ rails blogine:install:migrations
$ rails db:create db:migrate
```

Require the assets:
app/assets/javascripts/application.js
```
//= require blogine/application
```
app/assets/stylesheets/application.scss
```
@import 'blogine/application';
@import 'blogine/themes/default';
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
