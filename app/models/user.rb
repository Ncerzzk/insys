class User < ApplicationRecord
  validates :phone,presence: true,uniqueness: true


end
