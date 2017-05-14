class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content, null: false, default: ""
      t.integer :user_id, null: false
      t.string :likes, default: ""
      t.timestamps
    end
  end
end
