class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :recipient, foreign_key: true
      t.belongs_to :template, foreign_key: true
      t.string :status
      t.string :image_url

      t.timestamps
    end
  end
end
