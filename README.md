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

Will return something like:

```ruby
{
  GetPublicLinkResult: {
    Error: null,
    Success: true,
    Result: [
      {
        FullCitation: "Comcast Corp. v. Fed. Commc'ns Comm'n, 600 F.3d 642 (D.C. Cir., 2010)",
        Url: "https://apps.fastcase.com/Research/Public/ExViewer.aspx?LTID=%2fGLQLe%2fDaGym1PLr4VyFrNW1GRW%2fFszkp5OJNGHvwRPnb22Q5oSdo7jrjk8wbX8Q"
      }
    ],
  TotalResults: null
  }
}
```

## Limitations

Currently only supports a single citation, @todo, allow passing in an array of citations.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fastcase/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
