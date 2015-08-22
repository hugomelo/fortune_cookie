require File.dirname(__FILE__) + '/../test_helper'

class PhrasesTest < ActiveSupport::TestCase

  test 'give a phrase' do
    get "/api/v1/random_phrase/"

    phrase = Phrase.create phrase: 'Bla ble bli'

    json = JSON.parse(last_response.body)
    assert_not json["id"].nil?
  end

end
