class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:watch_progresses).references(:all)
  end

  def show; end
end
