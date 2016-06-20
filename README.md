## See Your Requests

[![Gem Version](https://badge.fury.io/rb/see_your_requests.svg)](https://badge.fury.io/rb/see_your_requests)
[![Build Status](https://travis-ci.org/davidsoncasey/see-your-requests.svg?branch=master)](https://travis-ci.org/davidsoncasey/see-your-requests)

See Your Requests is a lightweight Sinatra application that provides a way to view a request made,
as received by a webserver. The inspiration for this application came from a time when I was trying
to set a series of authorization headers for an API, and I wanted to verify that the correct headers
were being set by the HTTP gem that I was using. This is a similar tool to something like [Request Bin](http://requestb.in/) or Python's [httpbin](https://github.com/Runscope/httpbin) library, but is lightweight and runs locally.

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
Request received at 2016-06-20 11:52:16 -0700
Request method: GET
HTTP Headers:
	VERSION: HTTP/1.1
	HOST: 127.0.0.1:4567
	CONNECTION: keep-alive
	CACHE_CONTROL: max-age=0
	UPGRADE_INSECURE_REQUESTS: 1
	USER_AGENT: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36
	ACCEPT: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
	ACCEPT_ENCODING: gzip, deflate, sdch
	ACCEPT_LANGUAGE: en-US,en;q=0.8
	COOKIE: __distillery=v20150227_5511bb70-53b6-4a14-b2f7-76c28dc1bd1d; __utma=96992031.1662674521.1443647552.1459364728.1459368951.4; __utmz=96992031.1443647552.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); hsfirstvisit=http%3A%2F%2F127.0.0.1%3A4000%2F||1461719540454; __ar_v4=FMTSINVHMREH7CWUKFS7ZM%3A20160427%3A4%7CTPEFDKD7UZD7FKLP6UG6BN%3A20160427%3A4%7CWULMPY2EEBE23N5MXTTUML%3A20160427%3A4; _ga=GA1.1.1662674521.1443647552; __hstc=19301799.abed875e409b0d5c351ce0f82a7e4c91.1461719540457.1461952417243.1465236365370.10; hubspotutk=abed875e409b0d5c351ce0f82a7e4c91
```
If you are debugging API requests, simply change out the API URL for the local URL that See Your Requests is running on.