class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
  end

  def show; end
end
