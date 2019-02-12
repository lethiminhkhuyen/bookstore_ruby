class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :flat
      t.string :street
      t.integer :house_number
      t.string :postcode
      t.string :city
      t.string :country
      t.string :tel

      t.timestamps
    end
  end
end
