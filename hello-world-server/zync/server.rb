require 'bundler'
Bundler.setup

require 'eventmachine'
require 'zync'
require 'thin'

class HelloWorldApp < Zync::Controller
  def index
    render "hello world"
    close
  end
end

EM.run do
  Thin::Server.start('0.0.0.0', 3000, HelloWorldApp)
end
