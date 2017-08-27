require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get invite" do
    get teams_invite_url
    assert_response :success
  end

  test "should get join" do
    get teams_join_url
    assert_response :success
  end

  test "should get kick" do
    get teams_kick_url
    assert_response :success
  end

  test "should get current_team" do
    get teams_current_team_url
    assert_response :success
  end

end
