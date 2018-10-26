require 'test_helper'

class CustomSubscriptionsAdminEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_subscriptions_admin_entry = custom_subscriptions_admin_entries(:one)
  end

  test "should get index" do
    get custom_subscriptions_admin_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_subscriptions_admin_entry_url
    assert_response :success
  end

  test "should create custom_subscriptions_admin_entry" do
    assert_difference('CustomSubscriptionsAdminEntry.count') do
      post custom_subscriptions_admin_entries_url, params: { custom_subscriptions_admin_entry: { max_variants: @custom_subscriptions_admin_entry.max_variants, minimum_value: @custom_subscriptions_admin_entry.minimum_value, subscription_duration: @custom_subscriptions_admin_entry.subscription_duration } }
    end

    assert_redirected_to custom_subscriptions_admin_entry_url(CustomSubscriptionsAdminEntry.last)
  end

  test "should show custom_subscriptions_admin_entry" do
    get custom_subscriptions_admin_entry_url(@custom_subscriptions_admin_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_subscriptions_admin_entry_url(@custom_subscriptions_admin_entry)
    assert_response :success
  end

  test "should update custom_subscriptions_admin_entry" do
    patch custom_subscriptions_admin_entry_url(@custom_subscriptions_admin_entry), params: { custom_subscriptions_admin_entry: { max_variants: @custom_subscriptions_admin_entry.max_variants, minimum_value: @custom_subscriptions_admin_entry.minimum_value, subscription_duration: @custom_subscriptions_admin_entry.subscription_duration } }
    assert_redirected_to custom_subscriptions_admin_entry_url(@custom_subscriptions_admin_entry)
  end

  test "should destroy custom_subscriptions_admin_entry" do
    assert_difference('CustomSubscriptionsAdminEntry.count', -1) do
      delete custom_subscriptions_admin_entry_url(@custom_subscriptions_admin_entry)
    end

    assert_redirected_to custom_subscriptions_admin_entries_url
  end
end
