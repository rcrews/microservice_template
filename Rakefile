# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |t|
  t.options = %w[--display-cop-names
                 --display-style-guide
                 --extra-details
                 --autocorrect-all]
end

YARD::Rake::YardocTask.new do |t|
  t.options = %w[--fail-on-warning
                 --output-dir=_docs/api]
end

task default: %i[rubocop spec yard]
