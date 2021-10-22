class Group < ApplicationRecord
  has_many :subscriptions, as: :subscriber
end
