require "application_system_test_case"

class RamsTest < ApplicationSystemTestCase
  setup do
    @ram = rams(:one)
  end

  test "visiting the index" do
    visit rams_url
    assert_selector "h1", text: "Rams"
  end

  test "should create ram" do
    visit rams_url
    click_on "New ram"

    fill_in "Description", with: @ram.description
    fill_in "Mobile no", with: @ram.mobile_no
    fill_in "Username", with: @ram.username
    click_on "Create Ram"

    assert_text "Ram was successfully created"
    click_on "Back"
  end

  test "should update Ram" do
    visit ram_url(@ram)
    click_on "Edit this ram", match: :first

    fill_in "Description", with: @ram.description
    fill_in "Mobile no", with: @ram.mobile_no
    fill_in "Username", with: @ram.username
    click_on "Update Ram"

    assert_text "Ram was successfully updated"
    click_on "Back"
  end

  test "should destroy Ram" do
    visit ram_url(@ram)
    click_on "Destroy this ram", match: :first

    assert_text "Ram was successfully destroyed"
  end
end
