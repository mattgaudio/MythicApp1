require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get dashboards_main_url
    assert_response :success
  end

end
