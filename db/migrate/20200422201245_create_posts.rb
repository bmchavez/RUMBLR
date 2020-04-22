class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post_id
      t.string :blog_id
      t.string :integer
      t.integer :user_id
      t.string :text_title
      t.text :text_body

      t.timestamps
    end
  end
end
