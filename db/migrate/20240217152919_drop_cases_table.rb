# db/migrate/xxxxxx_drop_cases_table.rb

class DropCasesTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :cases
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
