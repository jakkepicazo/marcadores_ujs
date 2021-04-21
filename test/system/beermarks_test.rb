require "application_system_test_case"

class BeermarksTest < ApplicationSystemTestCase
  setup do
    @beermark = beermarks(:one)
  end

  test "visiting the index" do
    visit beermarks_url
    assert_selector "h1", text: "Beermarks"
  end

  test "creating a Beermark" do
    visit beermarks_url
    click_on "New Beermark"

    fill_in "Alcohol", with: @beermark.alcohol
    fill_in "Category", with: @beermark.category_id
    fill_in "Kind", with: @beermark.kind_id
    fill_in "Malts", with: @beermark.malts
    fill_in "Name", with: @beermark.name
    click_on "Create Beermark"

    assert_text "Beermark was successfully created"
    click_on "Back"
  end

  test "updating a Beermark" do
    visit beermarks_url
    click_on "Edit", match: :first

    fill_in "Alcohol", with: @beermark.alcohol
    fill_in "Category", with: @beermark.category_id
    fill_in "Kind", with: @beermark.kind_id
    fill_in "Malts", with: @beermark.malts
    fill_in "Name", with: @beermark.name
    click_on "Update Beermark"

    assert_text "Beermark was successfully updated"
    click_on "Back"
  end

  test "destroying a Beermark" do
    visit beermarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beermark was successfully destroyed"
  end
end
