class Thing < ApplicationRecord
  has_many :rules
  has_many :users, through: :rules
end
