class AddAdIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :ads, index: true
  end
end
