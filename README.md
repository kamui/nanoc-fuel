Nanoc Fuel
==========

[![Build Status](https://secure.travis-ci.org/kamui/nanoc-fuel.png)](http://travis-ci.org/kamui/nanoc-fuel)

Nanoc Fuel is a [nanoc](http://nanoc.stoneship.org/) gem that adds helpers for Facebook (like init, button, comments) and Google (analytics).

Installation
------------

- You need Nanoc 3.2 or above, works with Nanoc 3.3
- This gem requires haml 3.1 or above

If you're using bundler, just add this to your Gemfile:

```ruby
gem 'nanoc-fuel'
```

Otherwise, you can just install the gem manually:

```ruby
gem install nanoc-fuel
```

and then in your nanoc project, put this in lib/default.rb:

```ruby
require 'nanoc-fuel/tasks'
```

Usage
-----

For the Facebook/Google helpers:

In your nanoc project's `lib/helpers.rb` file, include one of the helpers:

```ruby
include NanocFuel::Helpers::Facebook
include NanocFuel::Helpers::Google
```

Then, in your layout add any of these:

```ruby
fb_init("FB APP ID HERE")

fb_comments("url", "num_posts", "width")

fb_like_btn("standard", "450", "true", "true")

ga_tracking("UA-XXXXX")
```

Contact
-------
You can reach me at <jack@jackchu.com>.