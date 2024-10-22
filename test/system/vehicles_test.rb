require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Color", with: @vehicle.color
    fill_in "License plate", with: @vehicle.license_plate
    fill_in "Manufacturing year", with: @vehicle.manufacturing_year
    fill_in "Model year", with: @vehicle.model_year
    check "Sold" if @vehicle.sold
    fill_in "Value", with: @vehicle.value
    fill_in "Vehicle model", with: @vehicle.vehicle_model_id
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Color", with: @vehicle.color
    fill_in "License plate", with: @vehicle.license_plate
    fill_in "Manufacturing year", with: @vehicle.manufacturing_year
    fill_in "Model year", with: @vehicle.model_year
    check "Sold" if @vehicle.sold
    fill_in "Value", with: @vehicle.value
    fill_in "Vehicle model", with: @vehicle.vehicle_model_id
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
