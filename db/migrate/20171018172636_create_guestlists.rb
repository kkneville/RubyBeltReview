class CreateGuestlists < ActiveRecord::Migration
  def change
    create_table :guestlists do |t|
      t.references :guest, index: true, foreign_key: true
      t.references :party, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
