class DeleteCommentsIdFromAds < ActiveRecord::Migration
  def change
    remove_column :ads, :comment_id
  end
end
