require 'test_helper'

class PostCellTest < ActionController::TestCase
  include Cells::AssertionsHelper
  
  test "list_categories" do
    html = render_cell :post, :list_categories
    assert_selekt html, "ul"
  end
  
  test "render_headline_for" do
    @mock_post = Post.new(:title => "Gimme Components")
    
    assert_equal "<h1>Gimme Components!!!</h1>", cell(:post).render_post_headline(@mock_post)
  end
end
