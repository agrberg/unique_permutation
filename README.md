Unique Permutation [![Build Status](https://github.com/agrberg/unique_permutation/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/agrberg/unique_permutation/actions/workflows/test.yml)
==================

Overview
--------

`unique_permutation` adds a method to Ruby's `Array` class that generates only unique permutations.

This is more efficient than the built in [`permutation` method](https://ruby-doc.org/core-2.7.1/Array.html#method-i-permutation) for datasets that contain identical elements where the difference doesn't matter such as `[1, 2, 2]` and `[1, 2, 2]` (i.e. the order of the `2`s is swapped).

Setup & Installation
--------------------

Simply include it in your project's `Gemfile`

``` ruby
gem 'unique_permutation'
```

License
---------

[MIT License](https://en.wikipedia.org/wiki/MIT_License)