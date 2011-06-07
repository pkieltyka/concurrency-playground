require 'bundler'
Bundler.setup

require 'zync'
require 'em-synchrony'
require 'thin'

class HelloWorldApp < Zync::Controller
  def index
    Fiber.new {
      render "hello world"
      close
    }.resume
  end
end

EM.synchrony do
  Thin::Server.start('0.0.0.0', 3000, HelloWorldApp)
end
