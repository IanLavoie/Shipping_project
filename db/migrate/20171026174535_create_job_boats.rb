class CreateJobBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :job_boats do |t|
      t.references :job_id
      t.references :boat_id


      t.timestamps
    end
  end
end
