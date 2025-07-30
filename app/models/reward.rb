class Reward < ApplicationRecord
  belongs_to :goal
  has_many :reward_rules, dependent: :destroy
  has_many :reward_tasks, dependent: :destroy
  has_many :tasks, through: :reward_tasks

  def eligible?
    all_rules_met? && all_tasks_done? && cooldown_met?
  end

  def all_rules_met?
    reward_rules.all?(&:satisfied?)
  end

  def all_tasks_done?
    tasks.all?(&:completed?)
  end

  def cooldown_met?
    last_redeemed_at.nil? || last_redeemed_at <= Time.zone.today - cooldown_days
  end

  def evaluate!
    update(available: eligible?)
  end

  def redeem!
    update!(last_redeemed_at: Time.zone.today)
  end
end