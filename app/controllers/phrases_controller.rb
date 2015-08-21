class PhrasesController < ApplicationController

  def index
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params[:phrase])

    respond_to do |format|
      if @phrase.save
        flash[:notice] = 'Phrase was successfully created.'
      end
      format.html { redirect_to(action: :index) }
    end
  end
  def phrase_params
    params.permit(:phrase)
  end
end
