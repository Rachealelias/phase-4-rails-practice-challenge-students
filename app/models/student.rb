class Student < ApplicationRecord
  belongs_to :instructor
  validates :name, presence:true
  validates :age, inclusion: { in: 18..100, message: "%{value} must be greater than or equal to 18"}
end
