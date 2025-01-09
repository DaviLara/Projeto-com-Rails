require "application_system_test_case"

class FruitypebblesTest < ApplicationSystemTestCase
  setup do
    @fruitypebble = fruitypebbles(:one)
  end

  test "visiting the index" do
    visit fruitypebbles_url
    assert_selector "h1", text: "Fruitypebbles"
  end

  test "should create fruitypebble" do
    visit fruitypebbles_url
    click_on "New fruitypebble"

    fill_in "Id", with: @fruitypebble.id
    fill_in "Name", with: @fruitypebble.name
    fill_in "Pebble count", with: @fruitypebble.pebble_count
    click_on "Create Fruitypebble"

    assert_text "Fruitypebble was successfully created"
    click_on "Back"
  end

  test "should update Fruitypebble" do
    visit fruitypebble_url(@fruitypebble)
    click_on "Edit this fruitypebble", match: :first

    fill_in "Id", with: @fruitypebble.id
    fill_in "Name", with: @fruitypebble.name
    fill_in "Pebble count", with: @fruitypebble.pebble_count
    click_on "Update Fruitypebble"

    assert_text "Fruitypebble was successfully updated"
    click_on "Back"
  end

  test "should destroy Fruitypebble" do
    visit fruitypebble_url(@fruitypebble)
    click_on "Destroy this fruitypebble", match: :first

    assert_text "Fruitypebble was successfully destroyed"
  end
end
