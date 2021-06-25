class MoviesController < ApplicationController
  PER_PAGE = 12

  def index
    @movies = if params[:genre] == "php"
                Movie.includes(:watch_progresses).where(genre: Movie::PHP_GENRE_LIST).page(params[:page]).per(PER_PAGE)
              else
                Movie.includes(:watch_progresses).where(genre: Movie::RAILS_GENRE_LIST).page(params[:page]).per(PER_PAGE)
              end
  end

  def show; end
end
