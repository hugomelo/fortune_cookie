require 'test_helper'

class PhraseTest < ActiveSupport::TestCase
  test "Create a phrase" do
    phrase = Phrase.new phrase: 'bla'
    assert phrase.save
  end

  test "Should choose a random phrase" do

    1000.times do |n|
      Phrase.create(phrase: "phrase_#{n}")
    end

    phrase = Phrase.random
    3.times do
      assert phrase.id != Phrase.random.id
    end
  end

  test "shoult not save null phrase" do
    phrase = Phrase.new
    assert_not phrase.save
  end
end
