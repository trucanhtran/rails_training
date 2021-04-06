require "application_system_test_case"

class SonsTest < ApplicationSystemTestCase
  setup do
    @son = sons(:one)
  end

  test "visiting the index" do
    visit sons_url
    assert_selector "h1", text: "Sons"
  end

  test "creating a Son" do
    visit sons_url
    click_on "New Son"

    fill_in "Address", with: @son.address
    fill_in "Age", with: @son.age
    fill_in "Name", with: @son.name
    fill_in "Phone", with: @son.phone
    click_on "Create Son"

    assert_text "Son was successfully created"
    click_on "Back"
  end

  test "updating a Son" do
    visit sons_url
    click_on "Edit", match: :first

    fill_in "Address", with: @son.address
    fill_in "Age", with: @son.age
    fill_in "Name", with: @son.name
    fill_in "Phone", with: @son.phone
    click_on "Update Son"

    assert_text "Son was successfully updated"
    click_on "Back"
  end

  test "destroying a Son" do
    visit sons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Son was successfully destroyed"
  end
end
