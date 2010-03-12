require 'test_helper'

class PostCellTest < ActionController::TestCase
  include Cells::AssertionsHelper
  
  test "list_categories" do
    html = render_cell :post, :list_categories
    assert_selekt html, "ul"
  end
end
