class ChangeDefaultForUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column_default(:users, :is_employee, 0)
  	change_column_default(:users, :salary, 0)
  end
end
