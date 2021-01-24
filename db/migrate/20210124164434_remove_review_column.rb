class RemoveReviewColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :visit_date
  end
end
