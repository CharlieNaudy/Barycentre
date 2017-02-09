require 'test_helper'

class UsersToMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_to_meeting = users_to_meetings(:one)
  end

  test "should get index" do
    get users_to_meetings_url, as: :json
    assert_response :success
  end

  test "should create users_to_meeting" do
    assert_difference('UsersToMeeting.count') do
      post users_to_meetings_url, params: { users_to_meeting: { meeting_id: @users_to_meeting.meeting_id, user_id: @users_to_meeting.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show users_to_meeting" do
    get users_to_meeting_url(@users_to_meeting), as: :json
    assert_response :success
  end

  test "should update users_to_meeting" do
    patch users_to_meeting_url(@users_to_meeting), params: { users_to_meeting: { meeting_id: @users_to_meeting.meeting_id, user_id: @users_to_meeting.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy users_to_meeting" do
    assert_difference('UsersToMeeting.count', -1) do
      delete users_to_meeting_url(@users_to_meeting), as: :json
    end

    assert_response 204
  end
end
