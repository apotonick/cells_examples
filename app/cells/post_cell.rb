class PostCell < Cell::Base
  
  def front_teaser
    # Retrieve a post object from the model layer and store it in an instance var,
    # just as you know it from controllers.
    @post = Post.newest
    
    render
  end
  
  def list_categories
    @categories = Category.find(:all, :order => "name ASC")
    render
  end
  
  cache :count_posts
  def count_posts
    @count = Post.find(:all).size
    render
  end
  
  def post_blurb
    @post = @opts[:post]
    render
  end
end
