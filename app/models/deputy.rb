class Deputy < ApplicationRecord
  has_many :expenditures
  
  validates :registration_id, presence: true
end
