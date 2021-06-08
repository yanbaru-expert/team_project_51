class ReadProgressesController < ApplicationController
  def create
    current_user.read_progresses.create!(text_id: params[:text_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.read_progresses.find_by(text_id: params[:text_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
