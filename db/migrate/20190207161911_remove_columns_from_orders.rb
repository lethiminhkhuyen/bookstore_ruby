class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
  	remove_column :orders, :first_name
  	remove_column :orders, :last_name
  	remove_column :orders, :street
  	remove_column :orders, :postage
  	remove_column :orders, :city
  	remove_column :orders, :country
  	remove_column :orders, :tel
  end
end
