require "application_system_test_case"

class User::MembersTest < ApplicationSystemTestCase
  setup do
    @user_member = user_members(:one)
  end

  test "visiting the index" do
    visit user_members_url
    assert_selector "h1", text: "User/Members"
  end

  test "creating a Member" do
    visit user_members_url
    click_on "New User/Member"

    fill_in "Email", with: @user_member.email
    fill_in "Lastname", with: @user_member.lastname
    fill_in "Name", with: @user_member.name
    fill_in "Phone", with: @user_member.phone
    fill_in "Summary", with: @user_member.summary
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit user_members_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_member.email
    fill_in "Lastname", with: @user_member.lastname
    fill_in "Name", with: @user_member.name
    fill_in "Phone", with: @user_member.phone
    fill_in "Summary", with: @user_member.summary
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit user_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
