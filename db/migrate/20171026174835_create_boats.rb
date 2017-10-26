class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :location
      t.references :photo, foreign_key: true
      t.integer :capacity
      t.integer :speed

      t.timestamps
    end
  end
end
