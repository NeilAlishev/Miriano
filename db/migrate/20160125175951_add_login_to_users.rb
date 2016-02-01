class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :patronymic, :string, null: true, default: ''
    add_column :users, :passport_number, :string, null: true, default:''
  end
end
