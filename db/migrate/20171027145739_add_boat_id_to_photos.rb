class AddBoatIdToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :boat, foreign_key: true
  end
end
