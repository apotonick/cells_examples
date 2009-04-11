class VideoSweeper < ActionController::Caching::Sweeper

  def after_videos_create
    expire_cell_state :video, :recent
  end

end
