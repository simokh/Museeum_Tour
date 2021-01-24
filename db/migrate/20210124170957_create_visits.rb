class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.date :visit_date

      t.timestamps
    end
  end
end
