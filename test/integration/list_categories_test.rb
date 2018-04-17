require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

def setup
  @category = Category.create(name: "Books")
  @category1 = Category.create(name: "Programming")
end

test "Should show categories listing" do
  get categories_path
  assert_template 'categories/index'
  assert_select "a[href=?]", category_path(@category), text: @ategory.name
  assert_select "a[href=?]", category_path(@category1), text: @category1.name
  end
end
