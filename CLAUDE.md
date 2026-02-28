# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

A Ruby gem that adds `Array#unique_permutation` — generates only unique permutations of an array, avoiding duplicates that Ruby's built-in `Array#permutation` produces when the array contains repeated elements. Implements Donald Knuth's Algorithm L.

## Commands

```bash
bundle install                          # Install dependencies
bundle update --all                     # Update all gems to latest versions
bundle exec rake                        # Default: runs RuboCop then RSpec
bundle exec rspec                       # Run tests only
bundle exec rspec spec/unique_permutation_spec.rb:16  # Run single test by line
bundle exec rubocop                     # Lint
bundle exec rubocop -A                  # Lint with autofix
COVERAGE=true bundle exec rspec         # Run tests with SimpleCov coverage
```

## Architecture

Single-file gem: the entire implementation is `lib/unique_permutation.rb`, which monkey-patches `Array` with `#unique_permutation`. It yields permutations via a block or returns an `Enumerator` if no block is given. All tests are in `spec/unique_permutation_spec.rb`.

## Conventions

- `frozen_string_literal: true` on all Ruby files
- RuboCop with `rubocop-performance`, `rubocop-rake`, `rubocop-rspec` plugins; `NewCops: enable`
- Targets Ruby >= 3.3; CI tests against Ruby 3.3, 3.4, 4.0, plus ruby-head and jruby-head (heads allowed to fail)
- No `Gemfile.lock` checked in (gem, not application)
- Single `.rubocop.yml` at root (no spec-level override)
- Follows conventions from sibling `array_proc` gem
