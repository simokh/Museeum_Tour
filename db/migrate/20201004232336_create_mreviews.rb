class CreateMreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :mreviews do |t|
      t.string :content
      t.integer :rate

      t.timestamps
    end
  end
end
