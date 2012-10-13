class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, :null => false
      t.string :title, :null => false
      t.text :url, :null => false
      t.integer :rating, :null => false, :default => 0

      t.timestamps
    end

    add_index :posts, :user_id
  end
end
