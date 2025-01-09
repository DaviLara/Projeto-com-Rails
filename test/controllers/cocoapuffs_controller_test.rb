require "test_helper"

class CocoapuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocoapuff = cocoapuffs(:one)
  end

  test "should get index" do
    get cocoapuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_cocoapuff_url
    assert_response :success
  end

  test "should create cocoapuff" do
    assert_difference("Cocoapuff.count") do
      post cocoapuffs_url, params: { cocoapuff: { archived: @cocoapuff.archived, name: @cocoapuff.name } }
    end

    assert_redirected_to cocoapuff_url(Cocoapuff.last)
  end

  test "should show cocoapuff" do
    get cocoapuff_url(@cocoapuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocoapuff_url(@cocoapuff)
    assert_response :success
  end

  test "should update cocoapuff" do
    patch cocoapuff_url(@cocoapuff), params: { cocoapuff: { archived: @cocoapuff.archived, name: @cocoapuff.name } }
    assert_redirected_to cocoapuff_url(@cocoapuff)
  end

  test "should destroy cocoapuff" do
    assert_difference("Cocoapuff.count", -1) do
      delete cocoapuff_url(@cocoapuff)
    end

    assert_redirected_to cocoapuffs_url
  end
end
