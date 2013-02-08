# Moshimoshi

> もしもし!
>
> Hello!

`moshimoshi` is a Rails text helper that returns a randomized greeting from a large selection of languages (currently 135+). This functionality is likely familiar to those who have used [Flickr](http://flickr.com) or [Gravatar](http://gravatar.com).

![](http://i.imgur.com/wRbGqFq.png)

## Installation

Add this line to your application's Gemfile:

    gem 'moshimoshi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moshimoshi

## Usage

`moshimoshi` uses a text tag, which means it can be easily integrated into any Rails view.

```erb
<%= moshimoshi_tag %>, <%= current_user.name %>
```

## Contributing

Pull requests always welcome! If I'm missing a greeting (check the [YAML file](http://github.com/imkmf/moshimoshi/blob/master/lib/moshimoshi/greetings.yml)), submit it!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
