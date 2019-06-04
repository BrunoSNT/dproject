require 'test_helper'

class OfficialReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @official_review = official_reviews(:one)
  end

  test "should get index" do
    get official_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_official_review_url
    assert_response :success
  end

  test "should create official_review" do
    assert_difference('OfficialReview.count') do
      post official_reviews_url, params: { official_review: { client_id: @official_review.client_id, official_rating: @official_review.official_rating, official_review: @official_review.official_review } }
    end

    assert_redirected_to official_review_url(OfficialReview.last)
  end

  test "should show official_review" do
    get official_review_url(@official_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_official_review_url(@official_review)
    assert_response :success
  end

  test "should update official_review" do
    patch official_review_url(@official_review), params: { official_review: { client_id: @official_review.client_id, official_rating: @official_review.official_rating, official_review: @official_review.official_review } }
    assert_redirected_to official_review_url(@official_review)
  end

  test "should destroy official_review" do
    assert_difference('OfficialReview.count', -1) do
      delete official_review_url(@official_review)
    end

    assert_redirected_to official_reviews_url
  end
end
