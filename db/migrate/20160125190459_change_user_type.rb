class ChangeUserType < ActiveRecord::Migration
  def change
    remove_column :users, :user_type
    add_column :users,:user_type, :boolean, null:false
  end
end
