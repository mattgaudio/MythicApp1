require 'test_helper'

class ExamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get examples_page_url
    assert_response :success
  end

end
