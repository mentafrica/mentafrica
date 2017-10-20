class Mentee < ApplicationRecord
  belongs_to :user
  has_many :messages
  belongs_to :mentor
end
