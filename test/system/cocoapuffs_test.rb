require "application_system_test_case"

class CocoapuffsTest < ApplicationSystemTestCase
  setup do
    @cocoapuff = cocoapuffs(:one)
  end

  test "visiting the index" do
    visit cocoapuffs_url
    assert_selector "h1", text: "Cocoapuffs"
  end

  test "should create cocoapuff" do
    visit cocoapuffs_url
    click_on "New cocoapuff"

    check "Archived" if @cocoapuff.archived
    fill_in "Name", with: @cocoapuff.name
    click_on "Create Cocoapuff"

    assert_text "Cocoapuff was successfully created"
    click_on "Back"
  end

  test "should update Cocoapuff" do
    visit cocoapuff_url(@cocoapuff)
    click_on "Edit this cocoapuff", match: :first

    check "Archived" if @cocoapuff.archived
    fill_in "Name", with: @cocoapuff.name
    click_on "Update Cocoapuff"

    assert_text "Cocoapuff was successfully updated"
    click_on "Back"
  end

  test "should destroy Cocoapuff" do
    visit cocoapuff_url(@cocoapuff)
    click_on "Destroy this cocoapuff", match: :first

    assert_text "Cocoapuff was successfully destroyed"
  end
end
