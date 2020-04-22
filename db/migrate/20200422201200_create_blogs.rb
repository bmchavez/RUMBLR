class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.integer :blog_id
      t.integer :own_id
      t.string :name
      t.integer :stars
      t.string :title
      t.string :handle
      t.time :date

      t.timestamps
    end
  end
end
