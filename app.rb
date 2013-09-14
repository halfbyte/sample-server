require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/json"
require "sinatra/reloader" if development?

require 'json'

dir = File.absolute_path(ARGV[0] || 'testfiles')
files = Dir[dir + "/*"]
puts "Starting serving files from: #{dir}"
puts files.map{|file| " - " + File.basename(file)}.join("\n")


get '/index.json' do
  mapping = files.inject({}) do |memo, file|
    name = File.basename(file, File.extname(file))
    url = to("/files/" + name + File.extname(file))
    memo[name] = url
    memo
  end
  headers "Access-Control-Allow-Origin" => "*"
  
  json mapping
end

get '/files/:file' do |file|
  headers "Access-Control-Allow-Origin" => "*"
  send_file File.join(dir, file)
end