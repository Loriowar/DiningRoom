class Appointment < ActiveRecord::Base

  attr_accessible :name, :salary

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :salary, numericality: {greater_than_or_equal_to: 0}

  has_many :employees

end