require 'test_helper'

class BracketPoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bracket_pools_create_url
    assert_response :success
  end

end
