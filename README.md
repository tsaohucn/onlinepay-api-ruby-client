# Onlinepay-Api-Ruby-Client

Welcome to visit the gem! 
The gem is a ruby wrapper about [onlinepay API](https://business.onlinepay.com/docs/?python#introduction)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onlinepay-api-ruby-client', require: 'onlinepay'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install onlinepay-api-ruby-client
Then
    `require: 'onlinepay'` in your ruby script file

## Usage
The library needs to be configured with your account's secret key which is available in [Backoffice](https://core.onlinepay.com/office/auth/login)

``` ruby
require "stripe"
Onlinepay.api_key = "api_key"

# create a new payment and return a payment object
payment = Onlinepay::Payments.new("Car",50,"CNY")

# show detail of the payment
payment.amount #=> 50
payment.currency #=> CNY
payment.processingUrl #=> https:\\...
payment.show #=> The payment detail Hash object {...}


# show all payments with given params
Onlinepay::Payments.lists(date_from: "2017-01-01", date_to: "2017-03-01", page: 2, per_page: 50) #=> All payments Hash object {...}

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tsao/onlinepay-api-ruby-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

