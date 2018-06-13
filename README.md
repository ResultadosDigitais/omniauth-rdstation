# Omniauth::Rdstation

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/omniauth/rdstation`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-rdstation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-rdstation

## Usage

Result:

```json
{
  "provider": "rdstation",
  "uid": null,
  "info": {
    "name": "username"
  },
  "credentials": {
    "token": "my-jwt-access-token",
    "refresh_token": "my-refresh-token",
    "expires_at": 1529011030,
    "expires": true
  },
  "extra": {
  }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/omniauth-rdstation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
