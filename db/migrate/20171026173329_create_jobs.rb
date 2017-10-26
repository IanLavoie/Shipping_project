class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.references :client
      t.references :manager
      t.references :origin
      t.references :destination
      t.integer :containers
      t.integer :price_per_cont
      t.decimal :total_price

      t.timestamps
    end
  end
end
