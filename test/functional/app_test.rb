require File.expand_path('../../../test/test_helper', __FILE__) 

class AppTest < Minitest::Test
  include Rack::Test::Methods

   OUTER_APP = Rack::Builder.parse_file('config.ru').first

  def app
    #App.new
     OUTER_APP # to test the whole stack
  end

  def setup
  end

  def test_index
    get :index
    assert last_response.ok?
  end

end

