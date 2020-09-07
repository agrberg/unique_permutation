# frozen_string_literal: true

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

spec_dir = File.dirname(__FILE__)
lib_path = File.expand_path(File.join(spec_dir, '..', 'lib'))
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

require 'unique_permutation'
