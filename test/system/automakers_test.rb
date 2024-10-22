require "application_system_test_case"

class AutomakersTest < ApplicationSystemTestCase
  setup do
    @automaker = automakers(:one)
  end

  test "visiting the index" do
    visit automakers_url
    assert_selector "h1", text: "Automakers"
  end

  test "should create automaker" do
    visit automakers_url
    click_on "New automaker"

    fill_in "Country", with: @automaker.country
    fill_in "Fundation year", with: @automaker.fundation_year
    fill_in "Name", with: @automaker.name
    click_on "Create Automaker"

    assert_text "Automaker was successfully created"
    click_on "Back"
  end

  test "should update Automaker" do
    visit automaker_url(@automaker)
    click_on "Edit this automaker", match: :first

    fill_in "Country", with: @automaker.country
    fill_in "Fundation year", with: @automaker.fundation_year
    fill_in "Name", with: @automaker.name
    click_on "Update Automaker"

    assert_text "Automaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Automaker" do
    visit automaker_url(@automaker)
    click_on "Destroy this automaker", match: :first

    assert_text "Automaker was successfully destroyed"
  end
end
