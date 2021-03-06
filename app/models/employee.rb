class Employee < ActiveRecord::Base

  attr_accessible :last_name, :first_name, :patronymic_name, :d_hiring, :appointment_id

  validates :last_name, length: {minimum: 2, maximum: 255}
  validates :first_name, length: {minimum: 2, maximum: 255}
  validates :patronymic_name, length: {minimum: 2, maximum: 255}, allow_blank: true
  validates :d_hiring, presence: true
  validates :appointment_id, presence: true


  belongs_to :appointment
  has_many :cashbox
  has_many :history_employees

  def full_name
    "#{last_name} #{first_name} #{patronymic_name}"
  end

  def short_name
    result = "#{last_name} #{first_name[0]}."
    result << "#{patronymic_name[0]}." if patronymic_name.present?
    result
  end

  def sort_name_from_db
    ActiveRecord::Base.connection.execute("SELECT employee_short_name(#{id});").first.first
  end

  Mysql2::Result
end