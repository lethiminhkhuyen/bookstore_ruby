class AddInfortationsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :password_digest, :string
  	add_column :users, :sex, :string
  	add_column :users, :email, :string
  	add_column :users, :birthday, :date
  	add_column :users, :is_employee, :boolean
  	add_column :users, :salary, :decimal
  	add_reference :users, :address, foreign_key: true
  end
end
