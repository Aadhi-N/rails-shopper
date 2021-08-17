class RemoveFalseFromOrderItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :order_items, :false, :string
  end
end
