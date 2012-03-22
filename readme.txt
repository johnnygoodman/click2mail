= Buy Click2Mail Credit

This is a script you can use to buy credit on demand. Once setup, it saves you the time of having to manually login to Click2Mail's web portal each time you run out of credit. 

== Install

You need to have Ruby installed where ever you are planning on running this. http://www.ruby-lang.org/en/downloads/

You'll also need RubyGems. http://docs.rubygems.org/read/chapter/3

You can install both Ruby and RubyGems in one blow with RVM: https://rvm.beginrescueend.com/rvm/install/

You need to have the ruby gem watir properly installed. http://watir.com/installation. 

Here's a link directly to the watir-webdriver, which lets you drive chrome and/or firefox: https://rubygems.org/gems/watir-webdriver

=== Script Variables

The script asks you to set variables for amount, click2mail user/pass, credit card info and billing address info. These must be defined and valid for the script to run. 

== Example

Say the path to the click2mail.rb script is:

/Users/johnnygoodman//Work/2010-12-25/www/click2mail/click2mail.rb

To run it, I can do this:

$>ruby /Users/johnnygoodman//Work/2010-12-25/www/click2mail/click2mail.rb

Or I can do this: 

$> cd /Users/johnnygoodman//Work/2010-12-25/www/click2mail
$> ruby click2mail.rb