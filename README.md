SpreeStrap
==========

A theme extension for Spreecommerce built with Bootstrap 3 and gumption (the personality trait not another codebase (note to self: write some opensource code and call it gumption)). 

This extension also overrides views for the spree_devise_auth gem as well, because who has a store without users?

```
˙ǝuo ou :ɹǝʍsuɐ
```

I built this spree extension because I had a project coming down the pipeline that required a rails e-commerce solution.

Everyone I work with uses Bootstrap. Bootstrap is an awesome css framework and makes everyone's life a lot easier, allowing more time for ping-pong and flight-of-fancy discussions. There was this: https://github.com/jdutil/spree_bootstrap but it didn't use Bootstrap 3 and wasn't built for the latest Spree version, namely 2-1-stable. 

This is my attempt to make a good starter theme with the latest Bootstrap and Spree releases. I quickly realized it's potential for repeat usefullness and thought other web developers would as well.

I hope you enjoy your life even more now that this exists.


Installation
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

Development
-------

Once you have Spreestrap installed clone your fork to your local machine so that you can edit the hell out of it and make something beautiful. I know you will.

If you want to see your changes as you make them edit your Gemfile ot include it from your local copy like this:

```ruby
gem 'spree_strap', :path => '../spree_strap'
```

Remember to switch it back to github source once it is deployed.



Testing
-------

I have no idea if any of this is still usefull, but you might, and may even use it.

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
