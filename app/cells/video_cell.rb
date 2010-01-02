class VideoCell < Cell::Base

  cache :recent

  def recent
    @header = @opts[:header]
    @videos = Video.recent
    render
  end

end
