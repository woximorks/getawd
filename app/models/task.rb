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

    validates :due_date, presence: true
    validates :estimated_time, presence: true, numericality: true
    validates :actual_time, presence: true, numericality: true

    belongs_to :goal, optional: true

end