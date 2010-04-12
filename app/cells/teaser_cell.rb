class TeaserCell < ::Cell::Base

  def box
    @post = Post.find :first
    render
  end

  def body
    render
  end

  def footer
    render
  end

end
