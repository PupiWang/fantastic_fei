ENV['RACK_ENV'] = 'test'

require './app/Fantastic_fei.rb'
require 'minitest/autorun'
require 'rack/test'

step 'Home page is accessible.' do
  class FantasticFeiTest < Minitest::Test
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    def test_it_says_hello_world
      get '/'
      assert last_response.ok?
      assert_equal 'Hello world!', last_response.body
    end

  end
end
