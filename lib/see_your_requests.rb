require 'sinatra/base'
require 'sinatra/multi_route'
require 'awesome_print'

class SeeYourRequests < Sinatra::Base
  register Sinatra::MultiRoute

  route :get, :post, :put, :delete, :head, :options, '/' do
    content_type :text
    ap request.env
    if request.body.size > 0
      ap request.body.read
    end
  end

end
