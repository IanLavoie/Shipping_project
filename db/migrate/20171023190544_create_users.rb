class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password
      t.string :user_type
      t.references :address, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
