class RemoveComstrains < ActiveRecord::Migration[5.2]
  def change
  	change_column :order_items, :quantity, :integer, :null => true
  	change_column :order_items, :price, :decimal, :null => true
  	change_column :orders, :first_name, :string, :null => true
  	change_column :orders, :last_name, :string, :null => true
  	change_column :orders, :sub_total, :decimal, :null => true
  end
end
