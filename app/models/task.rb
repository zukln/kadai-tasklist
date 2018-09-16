class Task < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :status, presence: true, length: { maximum: 10 }
  
end
