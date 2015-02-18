require 'test_helper'

class AdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "test_ad_has_title_and_text" do
    @ad = Ad.new(company_name: "Bamco", ad_text: "Buy our new improved whizbang!\n In stores now!")
    assert @ad.valid?
    assert_equal "Bamco", @ad.company_name
    assert_equal "Buy our new improved whizbang!\n In stores now!", @ad.ad_text
  end
  
  test "test_ad_title_validation" do
    @ad = Ad.new(company_name: " ", ad_text: "Buy our new improved whizbang!\n In stores now!")
    assert_not @ad.valid?
  end
  
end