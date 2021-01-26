class DeleteMuseumCol < ActiveRecord::Migration[6.0]
  def change
    remove_column :museums, :country
    remove_column :museums, :city
  end
end
