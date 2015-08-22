require File.dirname(__FILE__) + '/../test_helper'

class ActiveSupport::TestCase

  include Rack::Test::Methods

  def app
    API
  end
end


