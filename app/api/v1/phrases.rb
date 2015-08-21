module V1
  class Phrases < Grape::API
    resource :random_phrase do
      desc "Gives a random registered phrase"
      get "", root: :phrases do
        Phrase.random
      end
    end

  end
end
