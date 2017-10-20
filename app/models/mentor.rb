class Mentor < ApplicationRecord
  belongs_to :user
  belongs_to :mentee
  has_many :messages
end
