class CreateMicroPosts < ActiveRecord::Migration
  def change
    create_table :micro_posts do |t|
      t.string :content
      t.references :user, index: true

      t.timestamps
    end
    add_index :micro_posts, :created_at
  end
end
