require "application_system_test_case"

class FrutyPebblesTest < ApplicationSystemTestCase
  setup do
    @fruty_pebble = fruty_pebbles(:one)
  end

  test "visiting the index" do
    visit fruty_pebbles_url
    assert_selector "h1", text: "Fruty pebbles"
  end

  test "should create fruty pebble" do
    visit fruty_pebbles_url
    click_on "New fruty pebble"

    fill_in "Name", with: @fruty_pebble.name
    fill_in "Pebble count", with: @fruty_pebble.pebble_count
    click_on "Create Fruty pebble"

    assert_text "Fruty pebble was successfully created"
    click_on "Back"
  end

  test "should update Fruty pebble" do
    visit fruty_pebble_url(@fruty_pebble)
    click_on "Edit this fruty pebble", match: :first

    fill_in "Name", with: @fruty_pebble.name
    fill_in "Pebble count", with: @fruty_pebble.pebble_count
    click_on "Update Fruty pebble"

    assert_text "Fruty pebble was successfully updated"
    click_on "Back"
  end

  test "should destroy Fruty pebble" do
    visit fruty_pebble_url(@fruty_pebble)
    click_on "Destroy this fruty pebble", match: :first

    assert_text "Fruty pebble was successfully destroyed"
  end
end
