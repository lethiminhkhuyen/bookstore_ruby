class AddImportDateToBooks < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :import_date, :date, default: Date.today
  	add_column :books, :is_bestseller, :boolean, default: 0

  	Book.where(import_date: nil).update_all(import_date: Date.parse("Dec 8 2016"))
  	Book.where(is_bestseller: nil).update_all(is_bestseller: 0)
  end
end
