require 'rubygems'
require 'bundler/setup'

require 'rack'
require 'adsf'

app = Rack::Builder.new do
  use Rack::CommonLogger
  use Rack::ShowExceptions
  use Rack::Head
  use Adsf::Rack::IndexFileFinder, :root => 'output'
  run Rack::File.new('output')
end.to_app

run app
