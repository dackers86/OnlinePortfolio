$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require "rspec/core/rake_task"
require "bundler/setup"
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "app"
  end
end

begin
  RSpec::Core::RakeTask.new :spec

  task :default => [:spec]
rescue LoadError
end
