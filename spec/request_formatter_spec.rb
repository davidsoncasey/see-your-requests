require 'spec_helper'
require 'pry-byebug'

RSpec.describe RequestFormatter do
  context 'printing headers' do
    let(:request_formatter) do
      test_env = Rack::MockRequest.env_for("test_url", {"HTTP_TEST_HEADER" => "test value"})
      req = Rack::Request.new(test_env)
      RequestFormatter.new(req)
    end

    it 'prints HTTP headers' do
      expect { request_formatter.print_http_headers }.to(
        output(/(?<!HTTP_)TEST_HEADER.*/).to_stdout
      )
    end

    it 'does not print Rack specific environment variables' do
      expect { request_formatter.print_http_headers }.to_not(
        output(/rack\./).to_stdout
      )
    end
  end
end