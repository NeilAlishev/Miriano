class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :boolean    # 1 - продавец, 0 - покупатель
  end
end
