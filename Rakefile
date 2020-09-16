require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

desc 'Linter (rubocop) followed by tests (rspec)'
task default: %i[rubocop rspec]

desc 'Run RSpec Tests'
RSpec::Core::RakeTask.new(:rspec) do |t|
  t.pattern = './spec/**/*_spec.rb'
end

desc 'Run Rubocop Linter'
RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
end

desc 'Generage code coverage with simplecov'
task :coverage do
  `COVERAGE=true rspec`
  `open coverage/index.html`
end
