class ThirdThing < ApplicationRecord
  has_many :third_rules
  has_many :third_users, through: :third_rules
end
