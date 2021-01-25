class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :user_id, :integer
    add_column :visits, :museum_id, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :museum_id, :integer 
  end
end
