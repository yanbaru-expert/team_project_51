class TextsController < ApplicationController
  def index
    @texts = Text.where(genre: Text::RAILS_GENRE_LIST)
  end

  def show
    @text = Text.find_by(@texts)
  end
end
