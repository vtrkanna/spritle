class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id, null: false
      t.integer :user_id
      t.text :body, null: false, default: ""
      t.timestamps
    end
  end
end
