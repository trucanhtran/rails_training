require "application_system_test_case"

class FathersTest < ApplicationSystemTestCase
  setup do
    @father = fathers(:one)
  end

  test "visiting the index" do
    visit fathers_url
    assert_selector "h1", text: "Fathers"
  end

  test "creating a Father" do
    visit fathers_url
    click_on "New Father"

    fill_in "Age", with: @father.age
    fill_in "Description", with: @father.description
    fill_in "Name", with: @father.name
    click_on "Create Father"

    assert_text "Father was successfully created"
    click_on "Back"
  end

  test "updating a Father" do
    visit fathers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @father.age
    fill_in "Description", with: @father.description
    fill_in "Name", with: @father.name
    click_on "Update Father"

    assert_text "Father was successfully updated"
    click_on "Back"
  end

  test "destroying a Father" do
    visit fathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Father was successfully destroyed"
  end
end
