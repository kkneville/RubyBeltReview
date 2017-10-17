class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :location
      t.string :country
      t.string :password_digest
      t.string :email

      t.timestamps null: false
    end
  end
end
