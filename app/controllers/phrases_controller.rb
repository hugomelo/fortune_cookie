class PhrasesController < ApplicationController

  def index
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)

    respond_to do |format|
      if @phrase.save
        flash[:notice] = 'Phrase was successfully created.'
      else
        flash[:alert] = 'Sorry.. Had a problem saving your phrase. Please try again.'
      end
      format.html { redirect_to(action: :index) }
    end
  end
  def phrase_params
    params.require(:phrase).permit(:phrase)
  end
end
