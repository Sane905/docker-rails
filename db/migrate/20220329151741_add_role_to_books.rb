class AddRoleToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :role, :integer, null: false, default: 0
  end
end
