# frozen_string_literal: true

require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

desc 'Linter (rubocop) followed by tests (rspec)'
task default: %i[rubocop spec]

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = './spec/**/*_spec.rb'
end

RuboCop::RakeTask.new

desc 'Generate code coverage with simplecov'
task :coverage do
  `COVERAGE=true rspec`
  `open coverage/index.html`
end
