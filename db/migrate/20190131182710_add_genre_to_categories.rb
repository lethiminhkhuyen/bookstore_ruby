class AddGenreToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :genres, :category, foreign_key: true
  end
end
