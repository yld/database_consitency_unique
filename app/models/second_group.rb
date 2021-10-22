class SecondGroup < ApplicationRecord
  has_many :subscriptions, as: :second_subscriber
end
