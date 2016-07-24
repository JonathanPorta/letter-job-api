class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :job, foreign_key: true
      t.string :status
      t.string :image_url
      t.datetime :started_at
      t.datetime :completed_at

      t.timestamps
    end
  end
end
