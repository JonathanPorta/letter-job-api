class MoveTemplatesToTasksFromJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :template_id, :integer
    remove_column :jobs, :template_id
  end
end
