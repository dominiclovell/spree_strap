SpreeStrap
==========

A Spreecommerce extension built with Bootstrap. Currently supporting Spree 2-1-stable and Bootstrap 3.

This spree extension is meant as a starter extension for Spreecommerce. Ie., A way to get you up and running with Bootstrap as a skeleton for you own beautifully designed extension. You can use it as a gem and hack away but if you want full contol over the tasty bootstrap sauce I would recommend using this workflow.

1. Duplicate this repository https://help.github.com/articles/duplicating-a-repository
2. Clone your copy
3. Add your local copy to the the gem file
4. $ bundle install
5. Run the install generator
6. Make it pretty
7. Push your Spreestrap to github (make it public if you like sharing)
8. Modify your gemfile to point to the remote
9. Deploy your store


This extension also overrides views for the spree_devise_auth gem as well, because who has a store without users?

```
˙ǝuo ou :ɹǝʍsuɐ
```

Workflow Details
------------

Add spree_strap to your Gemfile by forking it and referencing your fork in your project gem file. This will allow you to modify it easliy.

```ruby
gem 'spree_strap', github: 'youraccount/spree_strap'
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
