class CreateFrutyPebbles < ActiveRecord::Migration[8.0]
  def change
    create_table :fruty_pebbles do |t|
      t.string :name
      t.integer :pebble_count

      t.timestamps
    end
  end
end
