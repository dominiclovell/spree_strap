SpreeStrap
==========

A Spreecommerce extension built with Bootstrap. Currently supporting Spree 2-1-stable and Bootstrap 3.

This spree extension is meant as a starter theme for Spreecommerce. Ie., A way to get you up and running with Bootstrap as a skeleton for you own beautifully designed store. You can either install it directly to you app or create your own extension from it.

This extension also overrides views for the spree_devise_auth gem as well, because who has a store without users?

```
˙ǝuo ou :ɹǝʍsuɐ
```

Install Instructions
--------------------

Add spree_strap to your Gemfile.

```ruby
gem 'spree_strap', github: 'Rounded/spree_strap'
```

Add or un-comment dependencies

```ruby
gem 'therubyracer', platforms: :ruby
gem 'less-rails'
```

Remove the default spree styles by commenting or removing the lines below from store/all.css:

```less
*= require spree_frontend
*= require_tree .
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_strap:install
```

Optimization
------------

If you only want to include specific bootstrap js files find the installed spree_strap_frontend.js file and remove the bootstrap line and replace with something like the examples below:

```js
//= require bootstrap/affix
//= require bootstrap/modal
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

Create your own extension starting with SpreeStrap
--------------------------------------------------

1. Duplicate this repository https://help.github.com/articles/duplicating-a-repository
2. Clone your copy
3. Add your local copy to the the gem file
4. $ bundle install
5. Require the css and javascript

Add the Spreestrap styles to store/all.css:

```less
*= require store/spree_strap/spree_strap_frontend
```

Add the spree_strap javascripts to your store/all.js file:

```js
//= require store/spree_strap/spree_strap_frontend
```

6. Make it pretty
7. Push your Spreestrap to github (make it public if you like sharing)
8. Modify your gemfile to point to the remote
9. Deploy your store


Copyright (c) 2013 Rounded, released under the New BSD License
