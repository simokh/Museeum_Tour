class RemoveMreviewTable < ActiveRecord::Migration[6.0]
  def change
    drop_table(:mreviews)
  end
end
