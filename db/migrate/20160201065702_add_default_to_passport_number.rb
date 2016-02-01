class AddDefaultToPassportNumber < ActiveRecord::Migration
  def change
    change_column :users, :passport_number, :string, default: '0'
  end
end
