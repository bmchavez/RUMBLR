class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_id
      t.string :integer
      t.string :user_id
      t.string :url
      t.string :small_size
      t.string :medium_size
      t.string :caption
      t.string :image
      t.string :date_created
      t.string :date_updated

      t.timestamps
    end
  end
end
