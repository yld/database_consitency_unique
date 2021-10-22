class Rule < ApplicationRecord
  belongs_to :thing
  belongs_to :user

  validates :thing_id, uniqueness: { scope: :user_id }
end
