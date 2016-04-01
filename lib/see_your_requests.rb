require 'sinatra/base'
require 'json'

class SeeYourRequests < Sinatra::Base

  get '/' do
    content_type :text
    puts JSON.pretty_generate(request.env)
  end

end
