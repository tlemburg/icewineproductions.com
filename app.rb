require 'sinatra'
require 'thin'

before do
  if request.host.include?('herokuapp')
    redirect to('http://www.icewineproductions.com'), 301
  end
end

get '/' do
  erb :index
end
