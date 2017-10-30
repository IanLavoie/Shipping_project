class RemoveBoatIdFromJobs < ActiveRecord::Migration[5.1]
  def change
      remove_column :jobs, :boat_id
  end
end
