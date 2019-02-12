class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price
      t.integer :discount
      t.string :author
      t.string :isbn
      t.string :format
      t.string :category
      t.string :genre
      t.string :publisher
      t.date :publication_date
      t.integer :pages
      t.integer :dimension_w
      t.integer :dimension_h
      t.integer :dimension_d
      t.integer :weight
      t.integer :unit
      t.text :description

      t.timestamps
    end
  end
end
