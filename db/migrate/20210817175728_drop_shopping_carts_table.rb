class DropShoppingCartsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :shopping_carts do |t|
    end
  end
end
