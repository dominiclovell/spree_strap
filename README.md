SpreeStrap
==========

A theme extension for Spreecommerce built with Bootstrap 3 and gumption(the personality trait not another codebase(note to self: write some opensource code and call it gumption)). 

This extension also overrides views for the spree_devise_auth gem as well. Because, who has a store without users?

```code
¡ǝuo ou :ɹǝʍsuɐ
```

I built this extension with a fair amount of optimism and hubris, and also because I had a project coming down the pipeline that required a e-commerce solution. 

Here at Rounded, we develop all of our websites on the Bootstrap framework. Bootstrap is awesome and makes everyone's life a lot easier, allowing more time for ping-pong and flights-of-fancy discussions. To prepare for the project I decided to make a good foundation with the latest Bootstrap and Spree releases. I quickly realized it's potential for repeat usefullness and thought other web developers would as well.

I hope you enjoy life, find this helpful, and I become internet famous on github.


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

Remove the default spree styles by commenting or removing the line below from store/all.css:

```less
*= require spree_frontend
```

Add the Spreestrap styles to store/all.css:

```less
*= require spree_strap_front
```

Modify your store/all.js file:

```js
//= require bootstrap/bootstrap
//= require store/spree_strap_frontend
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
