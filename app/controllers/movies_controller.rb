class MoviesController < ApplicationController
  PER_PAGE = 12

  def index
    @movies = Movie.page(params[:page]).per(PER_PAGE)
  end

  def show; end
end
