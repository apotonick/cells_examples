class VideosController < ApplicationController
  cache_sweeper :video_sweeper

  def create
    Video.create(params[:video])
    redirect_to :back
  end

end
