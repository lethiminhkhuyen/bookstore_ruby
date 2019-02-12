class AddInstockUnitToBooks < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :instock_unit, :integer
  end
end
