class PhrasesController < ApplicationController

  def index
    @phrase = Phrase.random

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @phrases }
    end
  end
end
