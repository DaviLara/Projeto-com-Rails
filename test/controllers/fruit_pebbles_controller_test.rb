require "test_helper"

class FruitPebblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fruit_pebble = fruit_pebbles(:one)
  end

  test "should get index" do
    get fruit_pebbles_url
    assert_response :success
  end

  test "should get new" do
    get new_fruit_pebble_url
    assert_response :success
  end

  test "should create fruit_pebble" do
    assert_difference("FruitPebble.count") do
      post fruit_pebbles_url, params: { fruit_pebble: { id: @fruit_pebble.id, name: @fruit_pebble.name, pebble_count: @fruit_pebble.pebble_count } }
    end

    assert_redirected_to fruit_pebble_url(FruitPebble.last)
  end

  test "should show fruit_pebble" do
    get fruit_pebble_url(@fruit_pebble)
    assert_response :success
  end

  test "should get edit" do
    get edit_fruit_pebble_url(@fruit_pebble)
    assert_response :success
  end

  test "should update fruit_pebble" do
    patch fruit_pebble_url(@fruit_pebble), params: { fruit_pebble: { id: @fruit_pebble.id, name: @fruit_pebble.name, pebble_count: @fruit_pebble.pebble_count } }
    assert_redirected_to fruit_pebble_url(@fruit_pebble)
  end

  test "should destroy fruit_pebble" do
    assert_difference("FruitPebble.count", -1) do
      delete fruit_pebble_url(@fruit_pebble)
    end

    assert_redirected_to fruit_pebbles_url
  end
end
