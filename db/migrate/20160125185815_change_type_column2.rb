class ChangeTypeColumn2 < ActiveRecord::Migration
  def change
    change_column :users, :type, :string, null: false
  end
end
