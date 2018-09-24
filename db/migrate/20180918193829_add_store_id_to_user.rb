class AddStoreIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :store, index:true, foreign_key: true
  end
end
