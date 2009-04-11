class VideoSweeper < ActionController::Caching::Sweeper
  observe Video

  def after_videos_create
    expire_cell
  end

#  def after_create(record)
#    expire_cell
#  end
#
#  def after_update(record)
#    expire_cell
#  end
#
#  def after_destroy(record)
#    expire_cell
#  end
#
  protected
  def expire_cell
    expire_cell_state :video, :recent
  end

end
