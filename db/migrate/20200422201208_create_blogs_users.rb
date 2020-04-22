class CreateBlogsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs_users do |t|
      t.string :blog_id
      t.string :Integer
      t.string :user_id
      t.string :integer
      t.integer :full_priveleges
      t.integer :contributor_priveleges
      t.integer :moderation_priveleges
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
