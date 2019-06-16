require "application_system_test_case"

class User::EventsTest < ApplicationSystemTestCase
  setup do
    @user_event = user_events(:one)
  end

  test "visiting the index" do
    visit user_events_url
    assert_selector "h1", text: "User/Events"
  end

  test "creating a Event" do
    visit user_events_url
    click_on "New User/Event"

    fill_in "Date", with: @user_event.date
    fill_in "Description", with: @user_event.description
    fill_in "Title", with: @user_event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit user_events_url
    click_on "Edit", match: :first

    fill_in "Date", with: @user_event.date
    fill_in "Description", with: @user_event.description
    fill_in "Title", with: @user_event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit user_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
