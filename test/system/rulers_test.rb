require "application_system_test_case"

class RulersTest < ApplicationSystemTestCase
  setup do
    @ruler = rulers(:one)
  end

  test "visiting the index" do
    visit rulers_url
    assert_selector "h1", text: "Rulers"
  end

  test "creating a Ruler" do
    visit rulers_url
    click_on "New Ruler"

    fill_in "Color", with: @ruler.color
    fill_in "Lenght", with: @ruler.lenght
    fill_in "Name", with: @ruler.name
    click_on "Create Ruler"

    assert_text "Ruler was successfully created"
    click_on "Back"
  end

  test "updating a Ruler" do
    visit rulers_url
    click_on "Edit", match: :first

    fill_in "Color", with: @ruler.color
    fill_in "Lenght", with: @ruler.lenght
    fill_in "Name", with: @ruler.name
    click_on "Update Ruler"

    assert_text "Ruler was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruler" do
    visit rulers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruler was successfully destroyed"
  end
end
