class Phrase < ActiveRecord::Base
  scope :random, lambda { offset(rand(Phrase.count)).first }
end
