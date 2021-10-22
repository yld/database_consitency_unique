class ThirdSubscription < ApplicationRecord
  belongs_to :third_subscriber, polymorphic: true
  validates :third_subscriber_id, uniqueness: { scope: :third_subscriber_type }
end
