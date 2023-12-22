require "application_system_test_case"

class FileAttachmentsTest < ApplicationSystemTestCase
  setup do
    @file_attachment = file_attachments(:one)
  end

  test "visiting the index" do
    visit file_attachments_url
    assert_selector "h1", text: "File attachments"
  end

  test "should create file attachment" do
    visit file_attachments_url
    click_on "New file attachment"

    fill_in "File name", with: @file_attachment.file_name
    fill_in "File path", with: @file_attachment.file_path
    fill_in "Task", with: @file_attachment.task_id
    click_on "Create File attachment"

    assert_text "File attachment was successfully created"
    click_on "Back"
  end

  test "should update File attachment" do
    visit file_attachment_url(@file_attachment)
    click_on "Edit this file attachment", match: :first

    fill_in "File name", with: @file_attachment.file_name
    fill_in "File path", with: @file_attachment.file_path
    fill_in "Task", with: @file_attachment.task_id
    click_on "Update File attachment"

    assert_text "File attachment was successfully updated"
    click_on "Back"
  end

  test "should destroy File attachment" do
    visit file_attachment_url(@file_attachment)
    click_on "Destroy this file attachment", match: :first

    assert_text "File attachment was successfully destroyed"
  end
end
