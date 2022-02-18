class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :unit_or_building
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.integer :postcode
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end

    add_index :stores, [:name, :unit_or_building, :street_number, :street_name, :suburb, :postcode, :city, :user_id], unique: true, name: "idx_store_address"
  end
end
