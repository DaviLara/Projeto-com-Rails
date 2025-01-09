require "test_helper"

class FruitypebblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fruitypebble = fruitypebbles(:one)
  end

  test "should get index" do
    get fruitypebbles_url
    assert_response :success
  end

  test "should get new" do
    get new_fruitypebble_url
    assert_response :success
  end

  test "should create fruitypebble" do
    assert_difference("Fruitypebble.count") do
      post fruitypebbles_url, params: { fruitypebble: { id: @fruitypebble.id, name: @fruitypebble.name, pebble_count: @fruitypebble.pebble_count } }
    end

    assert_redirected_to fruitypebble_url(Fruitypebble.last)
  end

  test "should show fruitypebble" do
    get fruitypebble_url(@fruitypebble)
    assert_response :success
  end

  test "should get edit" do
    get edit_fruitypebble_url(@fruitypebble)
    assert_response :success
  end

  test "should update fruitypebble" do
    patch fruitypebble_url(@fruitypebble), params: { fruitypebble: { id: @fruitypebble.id, name: @fruitypebble.name, pebble_count: @fruitypebble.pebble_count } }
    assert_redirected_to fruitypebble_url(@fruitypebble)
  end

  test "should destroy fruitypebble" do
    assert_difference("Fruitypebble.count", -1) do
      delete fruitypebble_url(@fruitypebble)
    end

    assert_redirected_to fruitypebbles_url
  end
end
