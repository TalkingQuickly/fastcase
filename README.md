# Fastcase

Simple wrapper around the Fastcase API

(http://legalgeekery.com/2014/09/10/fastcase-public-links-to-cases-on-haiku-decisis-are-here/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fastcase'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fastcase

## Usage

```ruby
::Fastcase::Client.new(
  ENV["FASTCASE_API_TOKEN"]
).public_link(
  volume: params["vol"],
  reporter: params["reporter"],
  page: params["page"]
)
```

## Limitations

Currently only supports a single citation, @todo, allow passing in an array of citations.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fastcase/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
