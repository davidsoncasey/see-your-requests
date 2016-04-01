require 'sinatra/base'
require 'sinatra/multi_route'
require 'json'

class SeeYourRequests < Sinatra::Base
  register Sinatra::MultiRoute

  route :get, :post, :put, :delete, :head, :options, '/' do
    content_type :text
    puts JSON.pretty_generate(request.env)
  end

end
