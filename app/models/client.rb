class Client < ActiveRecord::Base

  attr_accessible :last_name, :first_name, :patronymic_name, :contact_phone

  validates :last_name, length: {minimum: 2, maximum: 255}
  validates :first_name, length: {minimum: 2, maximum: 255}
  validates :patronymic_name, length: {minimum: 2, maximum: 255}, allow_blank: true
  validates :contact_phone, length: {minimum: 3, maximum: 30}

end