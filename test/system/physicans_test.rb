require "application_system_test_case"

class PhysicansTest < ApplicationSystemTestCase
  setup do
    @physican = physicans(:one)
  end

  test "visiting the index" do
    visit physicans_url
    assert_selector "h1", text: "Physicans"
  end

  test "creating a Physican" do
    visit physicans_url
    click_on "New Physican"

    fill_in "Age", with: @physican.age
    fill_in "Name", with: @physican.name
    click_on "Create Physican"

    assert_text "Physican was successfully created"
    click_on "Back"
  end

  test "updating a Physican" do
    visit physicans_url
    click_on "Edit", match: :first

    fill_in "Age", with: @physican.age
    fill_in "Name", with: @physican.name
    click_on "Update Physican"

    assert_text "Physican was successfully updated"
    click_on "Back"
  end

  test "destroying a Physican" do
    visit physicans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physican was successfully destroyed"
  end
end
