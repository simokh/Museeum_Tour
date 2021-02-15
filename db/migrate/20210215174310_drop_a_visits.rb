class DropAVisits < ActiveRecord::Migration[6.0]
  def change
    drop_table :a_visits
  end
end
