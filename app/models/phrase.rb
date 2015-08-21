class Phrase < ActiveRecord::Base
  validates :phrase, presence: true

  scope :random, lambda { offset(rand(Phrase.count)).first }
end
