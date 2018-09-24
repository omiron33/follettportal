class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.integer :budget
      t.integer :cost
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
