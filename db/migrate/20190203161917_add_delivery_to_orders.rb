class AddDeliveryToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_cost, :decimal, default: 0
  end
end
