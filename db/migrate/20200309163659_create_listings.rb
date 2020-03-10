class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.references :user
      t.string :Name
      t.integer :Price
      t.string :Description
      t.integer :parking
      t.integer :Rooms
      t.integer :bathrooms
      t.string :Town
      t.string :Estate
      t.string :photo
      t.integer :contacts

      t.timestamps
    end
  end
end
