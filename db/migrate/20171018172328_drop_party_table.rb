class DropPartyTable < ActiveRecord::Migration
  def up
    drop_table :parties
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
