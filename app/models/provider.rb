class Provider < ActiveRecord::Base

  attr_accessible :d_start_cooperation, :name, :address, :phone, :payment_account

  validates :d_start_cooperation, presence: true
  validates :name, uniqueness: true
  validates :name, length: {minimum: 1, maximum: 255}
  validates :address, length: {minimum: 5, maximum: 500}
  validates :phone, length: {minimum: 3, maximum: 30}
  validates :payment_account, length: {minimum: 10, maximum: 60},
                              allow_blank: true

  has_many :supplies

end