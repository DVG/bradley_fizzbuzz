# BradleyFizzbuzz [![Build Status](https://secure.travis-ci.org/DVG/bradley_fizzbuzz.png?branch=master)](https://travis-ci.org/DVG/bradley_fizzbuzz)

BradleyFizzbuzz, a gemified, test-driven fizzbuzz gem.

## Installation

Add this line to your application's Gemfile:

    gem 'bradley_fizzbuzz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bradley_fizzbuzz

## Usage

```ruby
[1, 2, 3, 4, 5].fizzbuzz # => [1, 2, "fizz", 4, "buzz"]
(1..5).fizzbuzz          # => [1, 2, "fizz", 4, "buzz"]
[15].fizzbuzz            # => ["fizzbuzz"]
1.fizz?                  # => false
3.fizz?                  # => true
5.fizz?                  # => false
3.buzz?                  # => false
5.buzz?                  # => true
1.fizzbuzz?              # => false
15.fizzbuzz?             # => true
```

Additionally `print_fizzbuzz` will send all the values for a given array or range to `$stdout`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request