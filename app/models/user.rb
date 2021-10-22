class User < ApplicationRecord
  has_many :rules
  has_many :things, through: :rules
end
