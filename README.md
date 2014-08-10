# RocketTracker

This gem is used with our task tracker http://rtrack.ru to monitor site status and traffic.

## Installation

Add this line to your application's Gemfile:

    gem 'rocket_tracker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rocket_tracker

## Usage

Create ```config/initializers/rocket_tracker.rb``` with data given to you by rtrack:

    RocketTracker.configure do |c|
      c.api_key = "123"
      c.js_key = "456"
    end
    
Include api key for JS in ```layout/application.html``` if you want to monitor client-side page load speed:

    == rocket_tracker_tag

This tag should be included before your application.js

Add 

    #= require rocket_tracker

to your ```application.js.coffee```

## Contributing

1. Fork it ( https://github.com/rs-pro/rocket_tracker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
