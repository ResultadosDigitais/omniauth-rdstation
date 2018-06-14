# OmniAuth RDStation

Implements an OmniAuth strategy for RD Station, based on OAuth2.

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

### Rails

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :rdstation, 'client-id', 'client-secret', provider_ignores_state: true
end
```

### Sinatra

```ruby
use OmniAuth::Builder do
  provider :rdstation, 'client-id', 'client-secret', provider_ignores_state: true
end
```

Note: `provider_ignores_state = true` is required because the RD Station API does not implement the state parameter validation yet. When this validation be implemented, the `provider_ignores_state` will become optional.


When the authentication succeeds, this data will be returned:

```json
{
  "provider": "rdstation",
  "uid": null,
  "info": {
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

Bug reports and pull requests are welcome on GitHub at https://github.com/ResultadosDigitais/omniauth-rdstation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
