require "test_helper"

class TimeTrackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_tracking = time_trackings(:one)
  end

  test "should get index" do
    get time_trackings_url
    assert_response :success
  end

  test "should get new" do
    get new_time_tracking_url
    assert_response :success
  end

  test "should create time_tracking" do
    assert_difference("TimeTracking.count") do
      post time_trackings_url, params: { time_tracking: { end_time: @time_tracking.end_time, start_time: @time_tracking.start_time, task_id: @time_tracking.task_id } }
    end

    assert_redirected_to time_tracking_url(TimeTracking.last)
  end

  test "should show time_tracking" do
    get time_tracking_url(@time_tracking)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_tracking_url(@time_tracking)
    assert_response :success
  end

  test "should update time_tracking" do
    patch time_tracking_url(@time_tracking), params: { time_tracking: { end_time: @time_tracking.end_time, start_time: @time_tracking.start_time, task_id: @time_tracking.task_id } }
    assert_redirected_to time_tracking_url(@time_tracking)
  end

  test "should destroy time_tracking" do
    assert_difference("TimeTracking.count", -1) do
      delete time_tracking_url(@time_tracking)
    end

    assert_redirected_to time_trackings_url
  end
end
