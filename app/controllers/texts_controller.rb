class TextsController < ApplicationController
  def index
    @texts = Text.includes(:read_progresses).references(:all)
  end

  def show; end
end
