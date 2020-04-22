class CreateUserRumblrs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_rumblrs do |t|
      t.string :integer
      t.string :username
      t.string :email
      t.string :salt
      t.string :first_name
      t.string :last_name
      t.string :date_created
      t.string :date_updated
      t.string :users_rumblr
      t.string :last_ip

      t.timestamps
    end
  end
end
