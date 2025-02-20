class Task < ApplicationRecord
    enum status: { not_started: 0, in_progress: 1, on_hold: 2, completed: 3 }

    def human_status
        {
          "not_started" => "Not Started",
          "in_progress" => "In Progress",
          "on_hold" => "On Hold",
          "completed" => "Completed"
        }[status]
      end

    # Ensure a start_date is always present when creating or updating a task
    validates :due_date, presence: true

    belongs_to :goal, optional: true

end