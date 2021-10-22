class ThirdUser < ApplicationRecord
  has_many :third_rules
  has_many :subscriptions, as: :third_subscriber
end
