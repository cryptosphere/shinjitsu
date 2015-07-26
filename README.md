# Shinjitsu

Verifiable authenticity for Ruby object attributes.

Shinjitsu uses cryptography (specificaly Merkle trees, MACs, and digital
signatures) to ensure attributes of objects are authentic.

This is particularly useful when persisting objects. Support is included
for use with ActiveRecord.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shinjitsu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shinjitsu

## Usage

Include `Shinjitsu::Verified` in your Ruby class, then call the
`verified_attributes` class method to select which attributes will be
verified:

```ruby
class MyThing
  attr_accessor :foo, :bar, :baz

  include Shinjitsu::Verified
  verified_attributes :foo, :bar, :baz

  # Methods for storing digests of foo, bar, and baz:
  attr_accessor :foo_digest, :bar_digest, :baz_digest
end
```

Note that we must add an additional three attributes:
`foo_digest`, `bar_digest`, and `baz_digest`, to store the digests associated
with the `foo`, `bar`, and `baz` attributes.

## Contributing

* Fork this repository on github
* Make your changes and send us a pull request
* If we like them we'll merge them
* If we've accepted a patch, feel free to ask for commit access

## License

Copyright (c) 2015 Tony Arcieri. Distributed under the MIT License. See
LICENSE.txt for further details.
