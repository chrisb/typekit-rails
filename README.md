# Typekit for Rails [![Gem Version](http://img.shields.io/gem/v/typekit-rails.svg)](https://rubygems.org/gems/typekit-rails)

Adds a Typekit helper to your Rails application and uses [some best practices](http://www.hagenburger.net/BLOG/A-Better-Typekit-Integration.html) for the integration.

### Installation

In your `Gemfile` just add:

```ruby
gem 'typekit-rails'
```

#### Use the Generator

Run the generator which will prompt you for your kit ID.

```
rails g typekit:install
```

#### Pro Usage

Add the JavaScript helper to `application.js` or equivalent:

```
//= require typekit
```

Specify your kit ID as such right near the top of your `<head>` element:

```
<%= typekit 'abc123def456' %>
```

### License

Licensed under the [MIT License](http://opensource.org/licenses/mit-license.html).

### Authors

* Chris Bielinski <chris@shadowreactor.com>
