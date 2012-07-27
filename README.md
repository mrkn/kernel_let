# Kenrel#let

This provids Kernel#let to bind name and variable pairs the given hash parameter as block-local variables.

## Installation

Add this line to your application's Gemfile:

    gem 'kernel_let'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kernel_let

## Usage

```ruby
require 'kernel_let'

sum = let(:min => 0, :max => 100) do
  min.step(max, 2).inject(:+)
end

puts sum  #=> 2550
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
