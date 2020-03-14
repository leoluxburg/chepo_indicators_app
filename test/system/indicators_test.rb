require "application_system_test_case"

class IndicatorsTest < ApplicationSystemTestCase
  setup do
    @indicator = indicators(:one)
  end

  test "visiting the index" do
    visit indicators_url
    assert_selector "h1", text: "Indicators"
  end

  test "creating a Indicator" do
    visit indicators_url
    click_on "New Indicator"

    fill_in "Description", with: @indicator.description
    fill_in "Justification", with: @indicator.justification
    fill_in "Medium", with: @indicator.medium
    fill_in "Methodology", with: @indicator.methodology
    fill_in "Negative", with: @indicator.negative
    fill_in "Other", with: @indicator.other
    fill_in "Positive", with: @indicator.positive
    fill_in "Rate", with: @indicator.rate
    fill_in "Result", with: @indicator.result
    fill_in "Subtheme", with: @indicator.subtheme_id
    fill_in "Title", with: @indicator.title
    fill_in "Unit", with: @indicator.unit
    fill_in "Value", with: @indicator.value
    click_on "Create Indicator"

    assert_text "Indicator was successfully created"
    click_on "Back"
  end

  test "updating a Indicator" do
    visit indicators_url
    click_on "Edit", match: :first

    fill_in "Description", with: @indicator.description
    fill_in "Justification", with: @indicator.justification
    fill_in "Medium", with: @indicator.medium
    fill_in "Methodology", with: @indicator.methodology
    fill_in "Negative", with: @indicator.negative
    fill_in "Other", with: @indicator.other
    fill_in "Positive", with: @indicator.positive
    fill_in "Rate", with: @indicator.rate
    fill_in "Result", with: @indicator.result
    fill_in "Subtheme", with: @indicator.subtheme_id
    fill_in "Title", with: @indicator.title
    fill_in "Unit", with: @indicator.unit
    fill_in "Value", with: @indicator.value
    click_on "Update Indicator"

    assert_text "Indicator was successfully updated"
    click_on "Back"
  end

  test "destroying a Indicator" do
    visit indicators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indicator was successfully destroyed"
  end
end
