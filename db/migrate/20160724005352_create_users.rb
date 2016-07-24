class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :google_id
      t.string :refresh_token
      t.string :profile_photo
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
