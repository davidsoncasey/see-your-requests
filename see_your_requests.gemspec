Gem::Specification.new do |s|
  s.name = 'see_your_requests'
  s.version = '0.0.0'
  s.date = Time.now.strftime("%Y-%m-%d")
  s.summary = 'Making requests human readable for debugging'
  s.description = 'A lightweight application that allows you to easily see your requests. Useful for debugging API authorization, among others.'
  s.authors = ["Casey Davidson"]
  s.files = Dir['lib/**/*.rb']
  s.executables << "see_your_requests"
  s.license = "MIT"
end