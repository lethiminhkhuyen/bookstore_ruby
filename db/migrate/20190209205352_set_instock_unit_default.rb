class SetInstockUnitDefault < ActiveRecord::Migration[5.2]
  def change
  	Book.update_all("instock_unit=unit")
  end
end
