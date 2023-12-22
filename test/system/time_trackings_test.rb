require "application_system_test_case"

class TimeTrackingsTest < ApplicationSystemTestCase
  setup do
    @time_tracking = time_trackings(:one)
  end

  test "visiting the index" do
    visit time_trackings_url
    assert_selector "h1", text: "Time trackings"
  end

  test "should create time tracking" do
    visit time_trackings_url
    click_on "New time tracking"

    fill_in "End time", with: @time_tracking.end_time
    fill_in "Start time", with: @time_tracking.start_time
    fill_in "Task", with: @time_tracking.task_id
    click_on "Create Time tracking"

    assert_text "Time tracking was successfully created"
    click_on "Back"
  end

  test "should update Time tracking" do
    visit time_tracking_url(@time_tracking)
    click_on "Edit this time tracking", match: :first

    fill_in "End time", with: @time_tracking.end_time
    fill_in "Start time", with: @time_tracking.start_time
    fill_in "Task", with: @time_tracking.task_id
    click_on "Update Time tracking"

    assert_text "Time tracking was successfully updated"
    click_on "Back"
  end

  test "should destroy Time tracking" do
    visit time_tracking_url(@time_tracking)
    click_on "Destroy this time tracking", match: :first

    assert_text "Time tracking was successfully destroyed"
  end
end
