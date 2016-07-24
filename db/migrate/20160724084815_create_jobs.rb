class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :created_by_id
      t.integer :assigned_to_id

      t.belongs_to :recipient, foreign_key: true
      t.belongs_to :template, foreign_key: true

      t.datetime :created_at
      t.datetime :start_after
      t.datetime :due_by

      t.timestamps
    end

    add_index :jobs, :created_by_id
    add_index :jobs, :assigned_to_id
  end
end
