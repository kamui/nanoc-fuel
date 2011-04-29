Nanoc Fuel
=============================

Nanoc Deploy is a nanoc 3.1 gem that adds a bunch of useful helpers and extras.

Installation
------------

- You need Nanoc 3.1.6 or above
- This gem requires haml 3.1.1 or above

If you're using bundler, just add this to your Gemfile:

    gem 'nanoc_fuel'

Otherwise, you can just install the gem manually:

    gem install nanoc_fuel

and then in your nanoc project, put this in lib/default.rb:

    require 'nanoc_fuel/tasks'

Usage
------------

For the Facebook helper:

In your nanoc project's lib/helpers.rb file add:

    include NanocFuel::Helpers::Facebook

Then, in your layout add this:

    fb_init("FB APP ID HERE")
    fb_comments("url", "num_posts", "width")

Contact
------------
You can reach me at <jack@jackchu.com>.