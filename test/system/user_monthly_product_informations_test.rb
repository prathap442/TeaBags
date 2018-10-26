require "application_system_test_case"

class UserMonthlyProductInformationsTest < ApplicationSystemTestCase
  setup do
    @user_monthly_product_information = user_monthly_product_informations(:one)
  end

  test "visiting the index" do
    visit user_monthly_product_informations_url
    assert_selector "h1", text: "User Monthly Product Informations"
  end

  test "creating a User monthly product information" do
    visit user_monthly_product_informations_url
    click_on "New User Monthly Product Information"

    fill_in "Information", with: @user_monthly_product_information.information
    click_on "Create User monthly product information"

    assert_text "User monthly product information was successfully created"
    click_on "Back"
  end

  test "updating a User monthly product information" do
    visit user_monthly_product_informations_url
    click_on "Edit", match: :first

    fill_in "Information", with: @user_monthly_product_information.information
    click_on "Update User monthly product information"

    assert_text "User monthly product information was successfully updated"
    click_on "Back"
  end

  test "destroying a User monthly product information" do
    visit user_monthly_product_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User monthly product information was successfully destroyed"
  end
end
