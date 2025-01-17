ENV["SINATRA_ENV"] = "test"
require '/Users/Eric/Development/code/sinatra-basic-forms-lab-online-web-sp-000/config/environment.rb'
require 'capybara/dsl'
require 'rack/test'
require 'capybara/dsl' 

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
