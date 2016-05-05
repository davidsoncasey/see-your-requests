## See Your Requests

[![Gem Version](https://badge.fury.io/rb/see_your_requests.svg)](https://badge.fury.io/rb/see_your_requests)

See Your Requests is a lightweight Sinatra application that provides a way to view a request made,
as received by a webserver. The inspiration for this application came from a time when I was trying
to set a series of authorization headers for an API, and I wanted to verify that the correct headers
were being set by the HTTP gem that I was using.

### Installation
To install as a ruby gem:
```
$ gem install see_your_requests
```

### Usage
After installation, simply run in a terminal:
```
see_your_requests
```
See Your Requests is a Sinatra application, and runs on port 4567 by default.
To change this, use the `-p` argument:
```
see_your_requests -p 9999
```
will run on port 9999.

When running, See Your Requests will simply print any request it receives to the console.
For example, if you navigate to `127.0.0.1:4567` in Chrome, See Your Requests will output the following:
```
{
                   "SERVER_SOFTWARE" => "thin 1.6.2 codename Doc Brown",
                       "SERVER_NAME" => "127.0.0.1",
                    "REQUEST_METHOD" => "GET",
                      "REQUEST_PATH" => "/",
                         "PATH_INFO" => "/",
                       "REQUEST_URI" => "/",
                      "HTTP_VERSION" => "HTTP/1.1",
                         "HTTP_HOST" => "127.0.0.1:4567",
                   "HTTP_CONNECTION" => "keep-alive",
                "HTTP_CACHE_CONTROL" => "max-age=0",
                       "HTTP_ACCEPT" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
    "HTTP_UPGRADE_INSECURE_REQUESTS" => "1",
                   "HTTP_USER_AGENT" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36",
              "HTTP_ACCEPT_ENCODING" => "gzip, deflate, sdch",
              "HTTP_ACCEPT_LANGUAGE" => "en-US,en;q=0.8",
                       "HTTP_COOKIE" => "__distillery=v20150227_5511bb70-53b6-4a14-b2f7-76c28dc1bd1d; __utma=96992031.1662674521.1443647552.1459364728.1459368951.4; __utmz=96992031.1443647552.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); hsfirstvisit=http%3A%2F%2F127.0.0.1%3A4000%2F||1461719540454; __ar_v4=FMTSINVHMREH7CWUKFS7ZM%3A20160427%3A4%7CTPEFDKD7UZD7FKLP6UG6BN%3A20160427%3A4%7CWULMPY2EEBE23N5MXTTUML%3A20160427%3A4; _ga=GA1.1.1662674521.1443647552; __hstc=19301799.abed875e409b0d5c351ce0f82a7e4c91.1461719540457.1461948885341.1461952417243.9; hubspotutk=abed875e409b0d5c351ce0f82a7e4c91",
                 "GATEWAY_INTERFACE" => "CGI/1.2",
                       "SERVER_PORT" => "4567",
                      "QUERY_STRING" => "",
                   "SERVER_PROTOCOL" => "HTTP/1.1",
                       "SCRIPT_NAME" => "",
                       "REMOTE_ADDR" => "127.0.0.1",
                    "async.callback" => Thin::Connection#post_process(result),
                       "async.close" => #<EventMachine::DefaultDeferrable:0x007fbd046879c8>,
                     "sinatra.route" => "GET /"
}
```
