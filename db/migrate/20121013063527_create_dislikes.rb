class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
      t.integer :user_id, :null => false
      t.integer :post_id, :null => false
      t.integer :rate

      t.timestamps
    end

    add_index :ratings, :post_id
  end
end
