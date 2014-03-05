class Employee < ActiveRecord::Base

  attr_accessible :last_name, :first_name, :patronymic_name, :d_hiring, :appointment_id

  validates :last_name, length: {minimum: 2, maximum: 255}
  validates :first_name, length: {minimum: 2, maximum: 255}
  validates :patronymic_name, length: {minimum: 2, maximum: 255}, allow_blank: true
  validates :d_hiring, presence: true
  validates :appointment_id, presence: true


  belongs_to :appointment


end