json.extract! task, :id, :title, :description, :job_id, :template_id, :content, :status, :image_url, :started_at, :completed_at, :created_at, :updated_at
json.url task_url(task, format: :json)
