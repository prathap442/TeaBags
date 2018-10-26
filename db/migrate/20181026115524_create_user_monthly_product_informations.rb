class CreateUserMonthlyProductInformations < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :user_monthly_product_informations do |t|
      t.json :information
      t.timestamps
    end
  end
end
