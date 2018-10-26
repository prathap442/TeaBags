class CreateCustomSubscriptionsAdminEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_subscriptions_admin_entries do |t|
      t.integer :subscription_duration
      t.integer :max_variants
      t.float :minimum_value

      t.timestamps
    end
  end
end
