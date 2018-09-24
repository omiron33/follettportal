class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :store_number
      t.string :school_name
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
