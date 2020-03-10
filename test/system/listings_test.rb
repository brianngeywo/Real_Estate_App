require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Description", with: @listing.Description
    fill_in "Estate", with: @listing.Estate
    fill_in "Name", with: @listing.Name
    fill_in "Price", with: @listing.Price
    fill_in "Rooms", with: @listing.Rooms
    fill_in "Town", with: @listing.Town
    fill_in "Bathrooms", with: @listing.bathrooms
    fill_in "Contacts", with: @listing.contacts
    fill_in "Parking", with: @listing.parking
    fill_in "Photo", with: @listing.photo
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @listing.Description
    fill_in "Estate", with: @listing.Estate
    fill_in "Name", with: @listing.Name
    fill_in "Price", with: @listing.Price
    fill_in "Rooms", with: @listing.Rooms
    fill_in "Town", with: @listing.Town
    fill_in "Bathrooms", with: @listing.bathrooms
    fill_in "Contacts", with: @listing.contacts
    fill_in "Parking", with: @listing.parking
    fill_in "Photo", with: @listing.photo
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
