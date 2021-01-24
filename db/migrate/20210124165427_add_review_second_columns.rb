class AddReviewSecondColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :review, :string, :limit =>200
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
