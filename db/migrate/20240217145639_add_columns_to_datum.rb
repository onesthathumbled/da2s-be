# db/migrate/xxxxxx_add_columns_to_datum.rb

class AddColumnsToDatum < ActiveRecord::Migration[6.0]
  def change
    add_column :data, :attribute1, :string
    add_column :data, :attribute2, :string
    add_column :data, :attribute3, :string
  end
end
