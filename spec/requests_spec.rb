require 'spec_helper'

RSpec.describe SeeYourRequests do

  context 'HTTP methods' do
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
end