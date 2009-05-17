class BlogController < ApplicationController
  cache_sweeper :posts_sweeper
  
  def index
  end
  
  
  def add
    Post.new(:title => "yo!", :body=>Time.now.to_s).save
    render :text => "added a posting"
  end
  
  def dashboard
  end
  
  def all
    @posts = Post.all
  end

end
