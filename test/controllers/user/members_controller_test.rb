require 'test_helper'

class User::MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_member = user_members(:one)
  end

  test "should get index" do
    get user_members_url
    assert_response :success
  end

  test "should get new" do
    get new_user_member_url
    assert_response :success
  end

  test "should create user_member" do
    assert_difference('User::Member.count') do
      post user_members_url, params: { user_member: { email: @user_member.email, lastname: @user_member.lastname, name: @user_member.name, phone: @user_member.phone, summary: @user_member.summary } }
    end

    assert_redirected_to user_member_url(User::Member.last)
  end

  test "should show user_member" do
    get user_member_url(@user_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_member_url(@user_member)
    assert_response :success
  end

  test "should update user_member" do
    patch user_member_url(@user_member), params: { user_member: { email: @user_member.email, lastname: @user_member.lastname, name: @user_member.name, phone: @user_member.phone, summary: @user_member.summary } }
    assert_redirected_to user_member_url(@user_member)
  end

  test "should destroy user_member" do
    assert_difference('User::Member.count', -1) do
      delete user_member_url(@user_member)
    end

    assert_redirected_to user_members_url
  end
end
