require 'bundler/gem_tasks'

require 'rake/testtask'
require 'reek/rake/task'
require 'rubocop/rake_task'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

Reek::Rake::Task.new do |task|
  task.fail_on_error = false
end

RuboCop::RakeTask.new do |task|
  task.fail_on_error = false
end

task default: [:rubocop, :reek, :test]
