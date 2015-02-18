require 'test_helper'

class NewspaperCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid newspaper creation" do
    get createNewspapers_path
    assert_no_difference 'Newspaper.count' do
      post newspapers_path, paper: { name:  "    "}
    end
    assert_template 'newspapers/new'
  end
  
  test "valid newspaper information" do
      get createNewspapers_path
      assert_difference 'Newspaper.count', 1 do
        post_via_redirect newspapers_path, paper: { name:  "The Daily Bugle"}
      end
      assert_template 'newspapers/show'
    end
end
