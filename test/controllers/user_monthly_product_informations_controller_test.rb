require 'test_helper'

class UserMonthlyProductInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_monthly_product_information = user_monthly_product_informations(:one)
  end

  test "should get index" do
    get user_monthly_product_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_monthly_product_information_url
    assert_response :success
  end

  test "should create user_monthly_product_information" do
    assert_difference('UserMonthlyProductInformation.count') do
      post user_monthly_product_informations_url, params: { user_monthly_product_information: { information: @user_monthly_product_information.information } }
    end

    assert_redirected_to user_monthly_product_information_url(UserMonthlyProductInformation.last)
  end

  test "should show user_monthly_product_information" do
    get user_monthly_product_information_url(@user_monthly_product_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_monthly_product_information_url(@user_monthly_product_information)
    assert_response :success
  end

  test "should update user_monthly_product_information" do
    patch user_monthly_product_information_url(@user_monthly_product_information), params: { user_monthly_product_information: { information: @user_monthly_product_information.information } }
    assert_redirected_to user_monthly_product_information_url(@user_monthly_product_information)
  end

  test "should destroy user_monthly_product_information" do
    assert_difference('UserMonthlyProductInformation.count', -1) do
      delete user_monthly_product_information_url(@user_monthly_product_information)
    end

    assert_redirected_to user_monthly_product_informations_url
  end
end
