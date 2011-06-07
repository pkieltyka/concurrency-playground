require 'bundler'
Bundler.setup

require 'rails'
require 'action_controller/railtie'
require 'thin'

class HelloWorldApp < Rails::Application
  config.secret_token = "270e5e3427f6e8fa5da67b714f766d9e"
end

class HelloWorldController < ActionController::Base
  def index
    render :text => "hello world"
  end
end

HelloWorldApp.routes.draw do
  match '/' => 'hello_world#index'
end


Thin::Server.start('0.0.0.0', 3000, HelloWorldApp)
