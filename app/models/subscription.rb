class Subscription < ApplicationRecord
  belongs_to :subscriber, polymorphic: true
  validates :subscriber_id, uniqueness: { scope: :subscriber_type }
end
