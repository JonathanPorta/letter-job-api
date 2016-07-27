json.extract! job, :id, :created_by_id, :assigned_to_id, :recipient_id, :template_id, :created_at, :start_after, :due_by, :created_at, :updated_at
json.url job_url(job, format: :json)
