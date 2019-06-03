require "application_system_test_case"

class AdvertisesTest < ApplicationSystemTestCase
  setup do
    @advertise = advertises(:one)
  end

  test "visiting the index" do
    visit advertises_url
    assert_selector "h1", text: "Advertises"
  end

  test "creating a Advertise" do
    visit advertises_url
    click_on "New Advertise"

    fill_in "Client", with: @advertise.client_id
    fill_in "Description", with: @advertise.description
    fill_in "End", with: @advertise.end
    fill_in "Price", with: @advertise.price
    fill_in "Release", with: @advertise.release
    fill_in "Title", with: @advertise.title
    fill_in "Type", with: @advertise.type
    click_on "Create Advertise"

    assert_text "Advertise was successfully created"
    click_on "Back"
  end

  test "updating a Advertise" do
    visit advertises_url
    click_on "Edit", match: :first

    fill_in "Client", with: @advertise.client_id
    fill_in "Description", with: @advertise.description
    fill_in "End", with: @advertise.end
    fill_in "Price", with: @advertise.price
    fill_in "Release", with: @advertise.release
    fill_in "Title", with: @advertise.title
    fill_in "Type", with: @advertise.type
    click_on "Update Advertise"

    assert_text "Advertise was successfully updated"
    click_on "Back"
  end

  test "destroying a Advertise" do
    visit advertises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advertise was successfully destroyed"
  end
end
