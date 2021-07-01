class TextsController < ApplicationController
  def index
    @texts = Text.genre_list(params[:genre])
  end

  def show
    @text = Text.find(params[:id])
  end
end
