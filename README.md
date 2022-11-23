# Pixel Analytics Presenter Plugin

A [COPRL](http://github.com/coprl/coprl) presenter plugin that includes Pixel scripts on the page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pixel_analytics_presenter_plugin', git: 'https://github.com/evvnt/pixel_analytics_presenter_plugin'
```

### Globally

To include Pixels on all pages, add the `:pixel_analytics` plugin to COPRL's global
collection of plugins:

```ruby
Coprl::Presenters::Settings.configure do |c|
  c.presenters.plugins << :pixel_analytics
end
```

### On specific pages

If you don't want pixel Analytics active everywhere, include it in individual POMs as necessary:
```ruby
plugin :pixel_analytics
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evvnt/pixel_analytics_presenter_plugin.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the COPRL project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/coprl/coprl/blob/master/CODE-OF-CONDUCT.md).
