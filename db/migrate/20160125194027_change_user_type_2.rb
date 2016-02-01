class ChangeUserType2 < ActiveRecord::Migration
  def change
    change_column :users, :user_type, :string, default: 'Buyer'
  end
end
