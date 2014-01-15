# Syslog::Logger::Facilitated

Syslog::Logger patched to support #<< and setting facility.

## Installation

Add this line to your application's Gemfile:

    gem 'syslog-logger-facilitated'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install syslog-logger-facilitated

## Usage

```ruby
require 'syslog/logger/facilitated'

logger = Syslog::Logger::Facilitated.new('progname', Syslog::LOG_LOCAL0)
logger << 'foo' # goes to :info
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/syslog-logger-facilitated/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
