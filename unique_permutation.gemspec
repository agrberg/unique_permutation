# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'unique_permutation'
  s.version     = '1.0.2'
  s.summary     = 'Find unique permutations from an array'
  s.description = 'Adds `Array#unique_permutation` method.'
  s.authors     = ['Aaron Rosenberg']
  s.email       = 'aarongrosenberg@gmail.com'
  s.files       = ['lib/unique_permutation.rb']
  s.homepage    = 'https://github.com/agrberg/unique_permutation'
  s.licenses    = ['MIT']
  s.metadata['rubygems_mfa_required'] = 'true'
  s.metadata['source_code_uri'] = 'https://github.com/agrberg/unique_permutation'
  s.metadata['bug_tracker_uri'] = 'https://github.com/agrberg/unique_permutation/issues'

  s.required_ruby_version = '>= 3.3'
end
