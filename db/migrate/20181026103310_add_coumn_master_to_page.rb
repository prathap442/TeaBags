class AddCoumnMasterToPage < ActiveRecord::Migration[5.2]
  def change
    add_column :pages,:master_node,:string
  end
end
