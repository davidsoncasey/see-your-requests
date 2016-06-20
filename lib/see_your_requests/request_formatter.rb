require 'awesome_print'

class RequestFormatter
  def initialize(request)
    @request = request
  end

  def print_request
    puts "\nRequest received at #{ Time.now }"
    print_method
    print_http_headers
    print_body
  end

  def print_method
    method = @request.env["REQUEST_METHOD"]
    puts "Request method: #{ method }"
  end

  def print_http_headers
    formatted_headers = {}
    http_headers = @request.env.select { |k, v| k =~ /^HTTP_.*/ }

    puts 'HTTP Headers:'
    http_headers.each do |k, v|
      formatted_header = k.gsub(/^HTTP_/, "")
      formatted_headers[formatted_header] = v
      puts "\t#{ formatted_header }: #{ v }"
    end
    formatted_headers.to_s
  end

  def print_body
    if @request.body.size > 0
      puts 'Request body:'
      puts @request.body.read
    end
  end
end