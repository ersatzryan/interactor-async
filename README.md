# Interactor::Async

Simple asynchronous interactors using [Sucker Punch](https://github.com/brandonhilkert/sucker_punch)

## Installation

Add this line to your application's Gemfile:

    gem 'interactor-async'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install interactor-async

## Usage

Interactor Async utilizes Sucker Punch which is built using 
[Celluloid](https://github.com/celluloid/celluloid/) actors to run jobs asychronously.

```ruby
class DoSomething
  include Interactor::Async

  def perform
    # do something
  end
end
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/interactor-async/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
