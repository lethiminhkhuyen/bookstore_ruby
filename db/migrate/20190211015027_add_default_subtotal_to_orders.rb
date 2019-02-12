class AddDefaultSubtotalToOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column_default(:orders, :sub_total, 0)
  end
end
