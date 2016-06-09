require 'sinatra/base'
require 'sinatra/multi_route'
require 'see_your_requests/request_formatter'

class SeeYourRequests < Sinatra::Base
  register Sinatra::MultiRoute

  route :get, :post, :put, :delete, :head, :options, '/' do
    content_type :text
    request_formatter = RequestFormatter.new(request)
    request_formatter.print_http_headers
    if request.body.size > 0
      ap request.body.read
    end
  end

end
