class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.references :photo, foreign_key: true

      t.timestamps
    end
  end
end
