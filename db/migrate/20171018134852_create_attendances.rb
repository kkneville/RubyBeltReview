class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :attending, index: true, foreign_key: true
      t.references :attends, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
