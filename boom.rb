require 'parallel'
require 'fileutils'

FileUtils.rm_rf("/tmp/sprockets")
Parallel.in_processes(8) do |_|
  require 'rubygems'
  require 'bundler/setup'
  require 'sprockets'
  environment = Sprockets::Environment.new
  environment.append_path File.join(File.dirname(__FILE__), "javascripts")
  environment.cache = Sprockets::Cache::FileStore.new("/tmp")
  puts "boom - the generated js is empty :(" if environment['application.js'] == nil
end

puts "Done"
