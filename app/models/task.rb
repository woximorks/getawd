class Task < ApplicationRecord
    validates :priority, inclusion: { in: %w(Low Medium High), message: "%{value} is not a valid priority" }
end
