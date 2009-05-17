class PostCell < Cell::Base
  
  def front_teaser
    # Retrieve a post object from the model layer and store it in an instance var,
    # just as you know it from controllers.
    @post = Post.newest
    
    # When we return nil, the cell will automatically render the view corresponding
    # to the current state method, which would be 'cells/post/front_teaser.html.erb'.
    nil
  end
  
  def list_categories
    @categories = Category.find(:all, :order => "name ASC")
    nil
  end
  
  cache :count_posts
  def count_posts
    @count = Post.find(:all).size
    nil
  end
  
  def post_blurb
    @post = @opts[:post]
    nil
  end
end
