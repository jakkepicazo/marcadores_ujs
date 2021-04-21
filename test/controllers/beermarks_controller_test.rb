require "test_helper"

class BeermarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beermark = beermarks(:one)
  end

  test "should get index" do
    get beermarks_url
    assert_response :success
  end

  test "should get new" do
    get new_beermark_url
    assert_response :success
  end

  test "should create beermark" do
    assert_difference('Beermark.count') do
      post beermarks_url, params: { beermark: { alcohol: @beermark.alcohol, category_id: @beermark.category_id, kind_id: @beermark.kind_id, malts: @beermark.malts, name: @beermark.name } }
    end

    assert_redirected_to beermark_url(Beermark.last)
  end

  test "should show beermark" do
    get beermark_url(@beermark)
    assert_response :success
  end

  test "should get edit" do
    get edit_beermark_url(@beermark)
    assert_response :success
  end

  test "should update beermark" do
    patch beermark_url(@beermark), params: { beermark: { alcohol: @beermark.alcohol, category_id: @beermark.category_id, kind_id: @beermark.kind_id, malts: @beermark.malts, name: @beermark.name } }
    assert_redirected_to beermark_url(@beermark)
  end

  test "should destroy beermark" do
    assert_difference('Beermark.count', -1) do
      delete beermark_url(@beermark)
    end

    assert_redirected_to beermarks_url
  end
end
