class RemoveImportDateDefaultFromBooks < ActiveRecord::Migration[5.2]
  def change
  	change_column_default(:books, :import_date, nil)
  end
end
