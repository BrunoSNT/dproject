require "application_system_test_case"

class OfficialReviewsTest < ApplicationSystemTestCase
  setup do
    @official_review = official_reviews(:one)
  end

  test "visiting the index" do
    visit official_reviews_url
    assert_selector "h1", text: "Official Reviews"
  end

  test "creating a Official review" do
    visit official_reviews_url
    click_on "New Official Review"

    fill_in "Client", with: @official_review.client_id
    fill_in "Official rating", with: @official_review.official_rating
    fill_in "Official review", with: @official_review.official_review
    click_on "Create Official review"

    assert_text "Official review was successfully created"
    click_on "Back"
  end

  test "updating a Official review" do
    visit official_reviews_url
    click_on "Edit", match: :first

    fill_in "Client", with: @official_review.client_id
    fill_in "Official rating", with: @official_review.official_rating
    fill_in "Official review", with: @official_review.official_review
    click_on "Update Official review"

    assert_text "Official review was successfully updated"
    click_on "Back"
  end

  test "destroying a Official review" do
    visit official_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Official review was successfully destroyed"
  end
end
