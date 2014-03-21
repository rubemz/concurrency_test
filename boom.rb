require 'parallel'
require 'fileutils'

FileUtils.rm_rf("/tmp/sprockets")
Parallel.in_processes(8) do |_|
  # uncomment to fix
  #require 'rubygems'
  #require 'bundler/setup'
  require 'sprockets'
  environment = Sprockets::Environment.new
  environment.append_path '/tmp/nuts/javascripts'
  environment.cache = Sprockets::Cache::FileStore.new("/tmp")
  puts "boom" if environment['application.js'] == nil
end
