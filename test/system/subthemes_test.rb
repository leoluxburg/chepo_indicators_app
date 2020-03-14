require "application_system_test_case"

class SubthemesTest < ApplicationSystemTestCase
  setup do
    @subtheme = subthemes(:one)
  end

  test "visiting the index" do
    visit subthemes_url
    assert_selector "h1", text: "Subthemes"
  end

  test "creating a Subtheme" do
    visit subthemes_url
    click_on "New Subtheme"

    fill_in "Comment", with: @subtheme.comment
    fill_in "Theme", with: @subtheme.theme_id
    fill_in "Title", with: @subtheme.title
    click_on "Create Subtheme"

    assert_text "Subtheme was successfully created"
    click_on "Back"
  end

  test "updating a Subtheme" do
    visit subthemes_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @subtheme.comment
    fill_in "Theme", with: @subtheme.theme_id
    fill_in "Title", with: @subtheme.title
    click_on "Update Subtheme"

    assert_text "Subtheme was successfully updated"
    click_on "Back"
  end

  test "destroying a Subtheme" do
    visit subthemes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subtheme was successfully destroyed"
  end
end
