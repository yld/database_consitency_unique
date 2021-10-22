class ThirdGroup < ApplicationRecord
  has_many :subscriptions, as: :third_subscriber
end
