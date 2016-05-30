Gem::Specification.new do |s|
  s.name = 'see_your_requests'
  s.version = '0.1.0'
  s.date = Time.now.strftime("%Y-%m-%d")
  s.summary = 'Making requests human readable for debugging'
  s.description = 'A lightweight application that allows you to easily see your requests. Useful for debugging API authorization, among others.'
  s.authors = ["Casey Davidson"]
  s.files = Dir['lib/**/*.rb']
  s.executables << 'see_your_requests'
  s.license = 'MIT'

  s.add_runtime_dependency 'sinatra', '~> 1.4'
  s.add_runtime_dependency 'sinatra-contrib', '~> 1.4'
  s.add_runtime_dependency 'awesome_print', '~> 1.2'

  s.add_development_dependency 'bundler', '~> 1.5'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.4'
end