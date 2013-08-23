$:.push(File.dirname(__FILE__))

require 'app'

app = Rack::Builder.new do
  use Rack::CommonLogger
  use Rack::ShowExceptions

  map '/' do
    run App 
  end

end

run app
