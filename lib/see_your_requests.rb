require 'sinatra'
require 'json'

class SeeYourRequests < Sinatra::Base

  get '/console' do
    content_type :text
    puts JSON.pretty_generate(request.env)
  end

end

SeeYourRequests.run!