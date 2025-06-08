class Goal < ApplicationRecord
  has_many :tasks, dependent: :destroy

  enum status: { not_started: 0, in_progress: 1, on_hold: 2, completed: 3 }

  def human_status
    {
      "not_started" => "Not Started",
      "in_progress" => "In Progress",
      "on_hold" => "On Hold",
      "completed" => "Completed"
    }[status]
  end

end