json.extract! job, :id, :user_id, :recipient_id, :template_id, :status, :image_url, :created_at, :updated_at
json.url job_url(job, format: :json)