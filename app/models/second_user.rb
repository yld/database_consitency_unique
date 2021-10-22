class SecondUser < ApplicationRecord
  has_many :second_rules
  has_many :second_things, through: :second_rules
  has_many :subscriptions, as: :second_subscriber
end
