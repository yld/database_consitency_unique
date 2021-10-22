class SecondSubscription < ApplicationRecord
  belongs_to :second_subscriber, polymorphic: true
end
