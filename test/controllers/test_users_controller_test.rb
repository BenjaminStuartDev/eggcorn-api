require "test_helper"

class TestUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_user = test_users(:one)
  end

  test "should get index" do
    get test_users_url, as: :json
    assert_response :success
  end

  test "should create test_user" do
    assert_difference("TestUser.count") do
      post test_users_url, params: { test_user: { description: @test_user.description, name: @test_user.name } }, as: :json
    end

    assert_response :created
  end

  test "should show test_user" do
    get test_user_url(@test_user), as: :json
    assert_response :success
  end

  test "should update test_user" do
    patch test_user_url(@test_user), params: { test_user: { description: @test_user.description, name: @test_user.name } }, as: :json
    assert_response :success
  end

  test "should destroy test_user" do
    assert_difference("TestUser.count", -1) do
      delete test_user_url(@test_user), as: :json
    end

    assert_response :no_content
  end
end
