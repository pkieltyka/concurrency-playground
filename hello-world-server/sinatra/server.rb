require 'bundler'
Bundler.setup

require 'thin'
require 'sinatra'

get '/' do
  'Hello world!'
end
