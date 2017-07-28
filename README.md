# Hot Reads (a service of URLockBox)

This app is a service of the URLockBox final assessment for Mod 4 at Turing School in Denver. The main app can be found on [GitHub](https://github.com/bschwartz10/m4-final-starter) or live on [Heroku](https://hot-reads-bs.herokuapp.com/). It is build in Rails 5.0, tested with [Rspec](https://github.com/rspec/rspec-rails) and [Selenium](https://rubygems.org/gems/selenium-webdriver/versions/2.48.1).

A visitor can see the top read links of the last 24 hours, based on the behavior of the users in URLockBox!

## Live App
[hot-reads](https://hot-reads-bs.herokuapp.com/)


## Getting Started

To get the project up and running, simply:
```
git clone https://github.com/bschwartz10/hot_reads.git
cd hot_reads
bundle
rake db:create
rake db:migrate
```
and visit `localhost:3000` to see the app in development. If URLockBox is already running on 3000, `rails s -p 3001` should take care of that.


## Authors

[Brett Schwartz](https://github.com/bschwartz10)
