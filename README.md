Nanoc Fuel
=============================

Nanoc Fuel is a nanoc gem that adds a bunch of useful helpers.

Installation
------------

- You need Nanoc 3.1.6 or above
- This gem requires haml 3.1.1 or above

If you're using bundler, just add this to your Gemfile:

    gem 'nanoc-fuel'

Otherwise, you can just install the gem manually:

    gem install nanoc-fuel

and then in your nanoc project, put this in lib/default.rb:

    require 'nanoc-fuel/tasks'

Usage
------------

For the Facebook/Google helpers:

In your nanoc project's lib/helpers.rb file, include one of the helpers:

    include NanocFuel::Helpers::Facebook  
    include NanocFuel::Helpers::Google

Then, in your layout add any of these:

    fb_init("FB APP ID HERE")

    fb_comments("url", "num_posts", "width")

    fb_like_btn("standard", "450", "true", "true")

    ga_tracking("UA-XXXXX")

Contact
------------
You can reach me at <jack@jackchu.com>.