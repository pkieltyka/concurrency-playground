require 'rubygems'
require 'bundler'
Bundler.setup

require 'goliath'
# require 'http_router'
# HttpRouter::Rack.override_rack_builder!

class Server < Goliath::API
  
  # use Goliath::Rack::Params  
  # map('/get/:id') do |env|
  #   [200, {'Content-type' => 'text/plain'}, ["My id is #{env['router.params'][:id]}\n"]]
  # end
  
  def response(env)
    [200, {}, "hello world"]
  end
end
