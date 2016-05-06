require 'sinatra'

set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')
set :port, 8686

get '/' do
  'Hello world!'
end