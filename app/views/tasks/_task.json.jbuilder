json.extract! task, :id, :task_name, :description, :status, :priority, :start_date, :due_date, :completion_date, :assigned_to, :estimated_time, :actual_time, :created_at, :updated_at
json.url task_url(task, format: :json)
