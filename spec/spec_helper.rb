require 'simplecov'
SimpleCov.start if ENV['COVERAGE']

SPEC_DIR = File.dirname(__FILE__)
lib_path = File.expand_path("#{SPEC_DIR}/../lib")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

require 'unique_permutation'

RSpec.configure do |config|
  # some (optional) config here
end