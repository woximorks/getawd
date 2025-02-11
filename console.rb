def add_task_every_day(task_name, description)

    (start_date..end_date).each do |date|
        tasks.each do |task|
        
      Task.find_or_create_by!(
            task_name: task, 
            due_date: date
    ) do |t|
      t.description = description # Manually provided description
      t.status = 0
      t.priority = 1
      t.start_date = date
      t.estimated_time = 30
      t.created_at = Time.current
      t.updated_at = Time.current
    end
  end
end

def add_task_once_weekly(weekday, task_name, description = "No description provided")
    valid_weekdays = Date::DAYNAMES.map(&:downcase)
    weekday = weekday.downcase
  
    unless valid_weekdays.include?(weekday)
      raise ArgumentError, "Invalid weekday. Please provide a valid weekday name (e.g., 'Monday', 'Tuesday', etc.)"
    end
  
    start_date = Date.today.beginning_of_month
    end_date = Date.today.end_of_month
  
    (start_date..end_date).each do |date|
      next unless date.strftime("%A").downcase == weekday
  
      Task.find_or_create_by!(
        task_name: task_name,
        due_date: date
      ) do |t|
        t.description = description # Manually provided description
        t.status = 0
        t.priority = 1
        t.start_date = date
        t.due_date = date
        t.estimated_time = 30
        t.created_at = Time.current
        t.updated_at = Time.current
      end
    end
  end

  # Task List
  
  add_task_once_weekly('Sunday', 'Planning', 'General SMART goals added for all daily tasks for the upcoming week. For example, 30 minutes of cardio(running) and 100 pushups is a SMART exercise goal.')
  add_task_once_weekly('Friday', 'Web Development', '1 hour of development')
  add_task_once_weekly('Thursday', 'Fabrication', '1 hour on 55 rollcage')
  add_task_once_weekly('Thursday', 'School', '30 minutes of school')

