require 'see_your_requests'
require 'pry'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

# From http://recipes.sinatrarb.com/p/testing/rspec
module RSpecMixin
  include Rack::Test::Methods
  def app
    SeeYourRequests
  end
end

RSpec.configure do |config|
  config.include RSpecMixin
end