sinatra-datamapper-sample
=========================

Sample project showing usage of Sinatra with DataMapper for quick and simple data persistence. This is used to back the blog post on Kainos.pl website (http://kainos.pl/blog/ruby-i-aplikacje-internetowe-vol-2-datamapper)

Features
========

- Simple working example of Sinatra framework with DataMapper
- Full CRUD working for a simple Article model
- Standard routes used in Ruby-ish world (with hacks to perform PUT and DELETE requests)
- Basic Sinatra layout scheme used (layout.erb + child views)

Structure
===========
- app.rb file holds all setup and routes used in application
- /views folder holds all necessary views with basic structure

How to run
==========
Run:
```
$bundle install
$ruby app.rb
```

If you'd like to access console (i.e. to add your own entities):
```
$irb -r ./app.rb
```

Future enhancements
===================

- Cover the routes with RSpec tests