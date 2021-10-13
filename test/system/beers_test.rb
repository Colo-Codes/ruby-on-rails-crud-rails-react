require "application_system_test_case"

class BeersTest < ApplicationSystemTestCase
  setup do
    @beer = beers(:one)
  end

  test "visiting the index" do
    visit beers_url
    assert_selector "h1", text: "Beers"
  end

  test "creating a Beer" do
    visit beers_url
    click_on "New Beer"

    fill_in "Brand", with: @beer.brand
    fill_in "Country", with: @beer.country
    fill_in "Quantity", with: @beer.quantity
    fill_in "Style", with: @beer.style
    click_on "Create Beer"

    assert_text "Beer was successfully created"
    click_on "Back"
  end

  test "updating a Beer" do
    visit beers_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @beer.brand
    fill_in "Country", with: @beer.country
    fill_in "Quantity", with: @beer.quantity
    fill_in "Style", with: @beer.style
    click_on "Update Beer"

    assert_text "Beer was successfully updated"
    click_on "Back"
  end

  test "destroying a Beer" do
    visit beers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beer was successfully destroyed"
  end
end
