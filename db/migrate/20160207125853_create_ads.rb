class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.string :address
      t.string :city
      t.string :price
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
