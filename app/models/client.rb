class Client < ActiveRecord::Base

  attr_accessible :last_name, :first_name, :patronymic_name, :contact_phone

  validates :last_name, length: {minimum: 2, maximum: 255}
  validates :first_name, length: {minimum: 2, maximum: 255}
  validates :patronymic_name, length: {minimum: 2, maximum: 255}, allow_blank: true
  validates :contact_phone, length: {minimum: 3, maximum: 30}

  has_many :complaints

  def full_name
    "#{last_name} #{first_name} #{patronymic_name}"
  end

  def short_name
    result = "#{last_name} #{first_name[0]}."
    result << "#{patronymic_name[0]}." if patronymic_name.present?
    result
  end

end