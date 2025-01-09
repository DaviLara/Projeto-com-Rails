class AddCocoapuffIdToFrutyPebble < ActiveRecord::Migration[8.0]
  def change
    add_column :fruty_pebbles, :cocoapuff_id, :integer
    add_index :fruty_pebbles, :cocoapuff_id
  end
end
