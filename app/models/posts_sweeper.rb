class PostsSweeper < ActionController::Caching::Sweeper
  observe Post
  
  def after_save(record)
    expire_cell_state :post, :count_posts
  end
end
