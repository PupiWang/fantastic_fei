require 'sinatra'

set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')

get '/' do
  'Hello world!'
end