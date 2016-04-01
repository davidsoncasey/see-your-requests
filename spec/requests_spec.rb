require 'spec_helper'

RSpec.describe SeeYourRequests do

  context 'HTTP methods' do
    before do
      $stdout = StringIO.new
    end

    it 'returns 200 status for get request' do
      get '/'
      expect(last_response).to be_ok
    end

    it 'returns 200 status for post request' do
      post '/', {}
      expect(last_response).to be_ok
    end

    it 'returns 200 status for put request' do
      put '/', {}
      expect(last_response).to be_ok
    end

    it 'returns 200 status for delete request' do
      delete '/'
      expect(last_response).to be_ok
    end

    it 'returns 200 status for head request' do
      head '/'
      expect(last_response).to be_ok
    end

    it 'returns 200 status for options request' do
      options '/'
      expect(last_response).to be_ok
    end
  end

  context 'Printing headers' do
    before do
      header 'TEST_HEADER', 'test-value'
    end

    it 'prints header name' do
      expect { get '/' }.to output(/HTTP_TEST_HEADER/).to_stdout
    end

    it 'prints header value' do
      expect { get '/' }.to output(/test-value/).to_stdout
    end
  end

  context 'Printing body' do
    let(:body) { 'Request Body' }

    it 'prints body on a request' do
      expect { get '/', body }.to output(/Request Body/).to_stdout
    end
  end
end