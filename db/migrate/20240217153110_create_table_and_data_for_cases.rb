# Run in your terminal:
# rails generate migration CreateTableAndDataForCases

class CreateTableAndDataForCases < ActiveRecord::Migration[7.1]
  def change
    create_table :cases do |t|
      t.string "age", limit: 3
      t.string "age_group", limit: 8
      t.string "sex", limit: 6
      t.date "date_announced"
      t.string "date_recovered", limit: 10
      t.string "date_of_death", limit: 10
      t.string "status", limit: 16
      t.string "date_announced_as_removed", limit: 10
      t.string "province", limit: 19
      t.string "muni_city", limit: 25
      t.string "health_status", limit: 12
      t.string "home_quarantined", limit: 3
      t.string "date_of_onset_of_symptoms", limit: 10
      t.string "pregnant", limit: 3
      t.string "region", limit: 43

      t.timestamps
    end
  end
end
