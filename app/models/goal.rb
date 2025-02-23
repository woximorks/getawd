class Goal < ApplicationRecord
    has_many :tasks, dependent: :destroy
  end
