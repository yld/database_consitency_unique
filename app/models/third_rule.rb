class ThirdRule < ApplicationRecord
  belongs_to :third_thing
  belongs_to :third_user
  validates :third_thing_id, uniqueness: { scope: :third_user_id }
end
