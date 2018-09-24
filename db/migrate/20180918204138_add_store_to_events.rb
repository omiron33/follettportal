class AddStoreToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :store, foreign_key: true
  end
end
