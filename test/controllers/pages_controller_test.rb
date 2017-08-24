require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get tournament_basic" do
    get pages_tournament_basic_url
    assert_response :success
  end

  test "should get statistics" do
    get pages_statistics_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

end
