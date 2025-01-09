require "test_helper"

class FrutyPebblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fruty_pebble = fruty_pebbles(:one)
  end

  test "should get index" do
    get fruty_pebbles_url
    assert_response :success
  end

  test "should get new" do
    get new_fruty_pebble_url
    assert_response :success
  end

  test "should create fruty_pebble" do
    assert_difference("FrutyPebble.count") do
      post fruty_pebbles_url, params: { fruty_pebble: { name: @fruty_pebble.name, pebble_count: @fruty_pebble.pebble_count } }
    end

    assert_redirected_to fruty_pebble_url(FrutyPebble.last)
  end

  test "should show fruty_pebble" do
    get fruty_pebble_url(@fruty_pebble)
    assert_response :success
  end

  test "should get edit" do
    get edit_fruty_pebble_url(@fruty_pebble)
    assert_response :success
  end

  test "should update fruty_pebble" do
    patch fruty_pebble_url(@fruty_pebble), params: { fruty_pebble: { name: @fruty_pebble.name, pebble_count: @fruty_pebble.pebble_count } }
    assert_redirected_to fruty_pebble_url(@fruty_pebble)
  end

  test "should destroy fruty_pebble" do
    assert_difference("FrutyPebble.count", -1) do
      delete fruty_pebble_url(@fruty_pebble)
    end

    assert_redirected_to fruty_pebbles_url
  end
end
