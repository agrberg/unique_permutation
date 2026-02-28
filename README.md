Unique Permutation [![CI](https://github.com/agrberg/unique_permutation/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/agrberg/unique_permutation/actions/workflows/ci.yml) [![Gem Version](https://badge.fury.io/rb/unique_permutation.svg)](https://badge.fury.io/rb/unique_permutation)
==================

Overview
--------

`unique_permutation` adds a method to Ruby's `Array` class that generates only unique permutations.

This is more efficient than the built in [`Array#permutation`](https://ruby-doc.org/3.4/Array.html#method-i-permutation) for datasets that contain identical elements where the difference doesn't matter such as `[1, 2, 2]` and `[1, 2, 2]` (i.e. the order of the `2`s is swapped).

The implementation uses [Knuth's Algorithm L](https://en.wikipedia.org/wiki/Permutation#Generation_in_lexicographic_order) to generate permutations in lexicographic order without duplicates.

Setup & Installation
--------------------

Simply include it in your project's `Gemfile`

``` ruby
gem 'unique_permutation'
```

Usage
-----

`unique_permutation` works just like `Array#permutation` — pass a block or use the returned `Enumerator`:

``` ruby
require 'unique_permutation'

# Block form
[1, 2, 2].unique_permutation { |perm| puts perm.inspect }
# [1, 2, 2]
# [2, 1, 2]
# [2, 2, 1]

# Enumerator form
[1, 2, 2].unique_permutation.to_a
# => [[1, 2, 2], [2, 1, 2], [2, 2, 1]]
```

Compare this to the built-in `permutation` which returns duplicates:

``` ruby
[1, 2, 2].permutation.to_a
# => [[1, 2, 2], [1, 2, 2], [2, 1, 2], [2, 2, 1], [2, 1, 2], [2, 2, 1]]
```

License
---------

[MIT License](LICENSE)
