class DebugCell < Cell::Base
  
  # cache it till the server restarts, so we can see when the top page was built:
  cache :show_cache_time
  
  def show_cache_time
    @time = Time.now
    nil
  end
end
