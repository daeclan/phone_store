class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :storage
      t.integer :megapixels

      t.timestamps
    end
  end
end
