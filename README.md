SpreeStrap
==========

A theme extension for Spree built with Bootstrap 3





Installation
------------

Add spree_strap to your Gemfile:

```ruby
gem 'spree_strap'
```

Add Dependencies to your Gemfile or un-comment them:

```ruby
gem 'therubyracer'  # If using Ruby
gem 'jquery-rails'  # If using Bootstrap's JS plugins.
```

Rename application.css to application.less, remove the other requires and add:

```less
*= require spree-strap
```

Modify your application.js file:

```js
//= require bootstrap/bootstrap
to application.js
```

If you only want to include specific bootstrap js files then instead:

```js
//= require bootstrap/affix
//= require bootstrap/modal
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_strap:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_strap/factories'
```

Copyright (c) 2013 Rounded, released under the New BSD License
