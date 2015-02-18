require 'test_helper'

class AdCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid ad creation" do
    get createAds_path
    assert_no_difference 'Ad.count' do
      post ads_path, ad: { company_name:  "",
                               ad_text: "your ad here"}
    end
    assert_template 'ads/new'
  end
  
  test "valid ad creation" do
      get createAds_path
      assert_difference 'Ad.count', 1 do
        post_via_redirect ads_path, ad: { company_name:  "Your company name here",
                                              ad_text: "Your ad text here"}
      end
      assert_template 'ads/show'
    end
end