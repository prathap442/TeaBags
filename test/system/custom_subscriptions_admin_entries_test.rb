require "application_system_test_case"

class CustomSubscriptionsAdminEntriesTest < ApplicationSystemTestCase
  setup do
    @custom_subscriptions_admin_entry = custom_subscriptions_admin_entries(:one)
  end

  test "visiting the index" do
    visit custom_subscriptions_admin_entries_url
    assert_selector "h1", text: "Custom Subscriptions Admin Entries"
  end

  test "creating a Custom subscriptions admin entry" do
    visit custom_subscriptions_admin_entries_url
    click_on "New Custom Subscriptions Admin Entry"

    fill_in "Max Variants", with: @custom_subscriptions_admin_entry.max_variants
    fill_in "Minimum Value", with: @custom_subscriptions_admin_entry.minimum_value
    fill_in "Subscription Duration", with: @custom_subscriptions_admin_entry.subscription_duration
    click_on "Create Custom subscriptions admin entry"

    assert_text "Custom subscriptions admin entry was successfully created"
    click_on "Back"
  end

  test "updating a Custom subscriptions admin entry" do
    visit custom_subscriptions_admin_entries_url
    click_on "Edit", match: :first

    fill_in "Max Variants", with: @custom_subscriptions_admin_entry.max_variants
    fill_in "Minimum Value", with: @custom_subscriptions_admin_entry.minimum_value
    fill_in "Subscription Duration", with: @custom_subscriptions_admin_entry.subscription_duration
    click_on "Update Custom subscriptions admin entry"

    assert_text "Custom subscriptions admin entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom subscriptions admin entry" do
    visit custom_subscriptions_admin_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom subscriptions admin entry was successfully destroyed"
  end
end
