class ChangeUserType4 < ActiveRecord::Migration
  def change
    remove_column :users, :user_type
    add_column :users, :is_seller, :boolean, null:false
  end
end
