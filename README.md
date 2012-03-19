Overview
--------

unique_permutation adds a method to the Ruby Array class that will give only unique permutations.
This is more efficient that the built in permutation method for arrays with duplicate elements in the cases where the difference between [1, 2, 2] and [1, 2, 2] is not important.

Unique Permutation now has some specs and coverage. If it wasn't kanged from programming puzzle I did, it would've had them to begin with.

Setup & Installation
--------------------

Install with `[sudo] gem install unique_permutation`

Include it in your project's `Gemfile`:

``` ruby
gem 'unique_permutation'
```

License
---------

This is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License Version 2 as published by the Free Software Foundation: www.gnu.org/copyleft/gpl.html

Seriously, it's my first gem and a simple one at that. Please feel free to use it for whatever you like except in the assistance of robots or chimpanzees taking over the world.