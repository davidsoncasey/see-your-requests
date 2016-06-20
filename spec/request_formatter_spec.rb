require 'spec_helper'

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

  context 'printing body' do
    it 'prints the request body' do
      test_env = Rack::MockRequest.env_for("test_url", {input: "test value"})
      request_formatter = RequestFormatter.new(Rack::Request.new(test_env))
      expect { request_formatter.print_body }.to output(/test value/).to_stdout
    end

    it 'handles nil body' do
      test_env = Rack::MockRequest.env_for("test_url", {input: nil})
      request_formatter = RequestFormatter.new(Rack::Request.new(test_env))
      expect { request_formatter.print_body }.to output("").to_stdout
    end
  end

  context 'printing method' do
    it 'prints the request method' do
      test_env = Rack::MockRequest.env_for("test_url", {method: 'POST'})
      mock_request = Rack::Request.new(test_env)
      request_formatter = RequestFormatter.new(mock_request)
      expect { request_formatter.print_method }.to output(/POST/).to_stdout
    end
  end
end