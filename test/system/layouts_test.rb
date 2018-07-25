require "application_system_test_case"

class LayoutsTest < ApplicationSystemTestCase
  setup do
    @layout = layouts(:one)
  end

  test "visiting the index" do
    visit layouts_url
    assert_selector "h1", text: "Layouts"
  end

  test "creating a Layout" do
    visit layouts_url
    click_on "New Layout"

    fill_in "Name", with: @layout.name
    fill_in "Page Part", with: @layout.page_part_id
    fill_in "Posx", with: @layout.posx
    fill_in "Posy", with: @layout.posy
    click_on "Create Layout"

    assert_text "Layout was successfully created"
    click_on "Back"
  end

  test "updating a Layout" do
    visit layouts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @layout.name
    fill_in "Page Part", with: @layout.page_part_id
    fill_in "Posx", with: @layout.posx
    fill_in "Posy", with: @layout.posy
    click_on "Update Layout"

    assert_text "Layout was successfully updated"
    click_on "Back"
  end

  test "destroying a Layout" do
    visit layouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Layout was successfully destroyed"
  end
end
