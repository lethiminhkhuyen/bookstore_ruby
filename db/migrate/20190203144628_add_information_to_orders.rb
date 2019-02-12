class AddInformationToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :status, :string, default: 'cart'
    add_column :orders, :street, :string
    add_column :orders, :postage, :string
    add_column :orders, :city, :string
    add_column :orders, :country, :string
    add_column :orders, :tel, :string

    Order.where(status: nil).update_all(status: 'cart')
  end
end
