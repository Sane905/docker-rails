class AddPublisherIdToBooks < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :publisher_id, :integer, null:false
  end
end
