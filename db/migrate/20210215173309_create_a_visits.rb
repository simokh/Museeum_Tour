class CreateAVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :a_visits do |t|
      t.date :visit

      t.timestamps
    end
  end
end
