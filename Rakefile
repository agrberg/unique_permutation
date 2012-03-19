require 'rake'
require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb"
end

desc 'Generage code coverage with simplecov'
task :coverage do
  `rake spec COVERAGE=true`
  `open coverage/index.html`
end