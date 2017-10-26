class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :region
      t.string :city
      t.integer :zip_code
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
