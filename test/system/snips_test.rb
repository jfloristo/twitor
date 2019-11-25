require "application_system_test_case"

class SnipsTest < ApplicationSystemTestCase
  setup do
    @snip = snips(:one)
  end

  test "visiting the index" do
    visit snips_url
    assert_selector "h1", text: "Snips"
  end

  test "creating a Snip" do
    visit snips_url
    click_on "New Snip"

    fill_in "Snip", with: @snip.snip
    click_on "Create Snip"

    assert_text "Snip was successfully created"
    click_on "Back"
  end

  test "updating a Snip" do
    visit snips_url
    click_on "Edit", match: :first

    fill_in "Snip", with: @snip.snip
    click_on "Update Snip"

    assert_text "Snip was successfully updated"
    click_on "Back"
  end

  test "destroying a Snip" do
    visit snips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snip was successfully destroyed"
  end
end
