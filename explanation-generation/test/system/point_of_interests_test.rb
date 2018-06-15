require "application_system_test_case"

class PointOfInterestsTest < ApplicationSystemTestCase
  setup do
    @point_of_interest = point_of_interests(:one)
  end

  test "visiting the index" do
    visit point_of_interests_url
    assert_selector "h1", text: "Point Of Interests"
  end

  test "creating a Point of interest" do
    visit point_of_interests_url
    click_on "New Point Of Interest"

    fill_in "Name", with: @point_of_interest.name
    click_on "Create Point of interest"

    assert_text "Point of interest was successfully created"
    click_on "Back"
  end

  test "updating a Point of interest" do
    visit point_of_interests_url
    click_on "Edit", match: :first

    fill_in "Name", with: @point_of_interest.name
    click_on "Update Point of interest"

    assert_text "Point of interest was successfully updated"
    click_on "Back"
  end

  test "destroying a Point of interest" do
    visit point_of_interests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Point of interest was successfully destroyed"
  end
end
