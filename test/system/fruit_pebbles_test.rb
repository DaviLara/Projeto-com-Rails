require "application_system_test_case"

class FruitPebblesTest < ApplicationSystemTestCase
  setup do
    @fruit_pebble = fruit_pebbles(:one)
  end

  test "visiting the index" do
    visit fruit_pebbles_url
    assert_selector "h1", text: "Fruit pebbles"
  end

  test "should create fruit pebble" do
    visit fruit_pebbles_url
    click_on "New fruit pebble"

    fill_in "Id", with: @fruit_pebble.id
    fill_in "Name", with: @fruit_pebble.name
    fill_in "Pebble count", with: @fruit_pebble.pebble_count
    click_on "Create Fruit pebble"

    assert_text "Fruit pebble was successfully created"
    click_on "Back"
  end

  test "should update Fruit pebble" do
    visit fruit_pebble_url(@fruit_pebble)
    click_on "Edit this fruit pebble", match: :first

    fill_in "Id", with: @fruit_pebble.id
    fill_in "Name", with: @fruit_pebble.name
    fill_in "Pebble count", with: @fruit_pebble.pebble_count
    click_on "Update Fruit pebble"

    assert_text "Fruit pebble was successfully updated"
    click_on "Back"
  end

  test "should destroy Fruit pebble" do
    visit fruit_pebble_url(@fruit_pebble)
    click_on "Destroy this fruit pebble", match: :first

    assert_text "Fruit pebble was successfully destroyed"
  end
end
