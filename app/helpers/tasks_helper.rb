module TasksHelper
    def human_status(status)
      {
        "not_started" => "Not Started",
        "in_progress" => "In Progress",
        "on_hold" => "On Hold",
        "completed" => "Completed"
      }[status]
    end
  end