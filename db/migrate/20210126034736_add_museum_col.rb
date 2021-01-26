class AddMuseumCol < ActiveRecord::Migration[6.0]
  def change
    add_column :museums, :borough, :string
  end
end
