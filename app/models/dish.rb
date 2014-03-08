class Dish< ActiveRecord::Base

  attr_accessible :name, :calories, :weight

  validates :name, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 255}
  validates :calories, numericality: {greater_than_or_equal_to: 1}, allow_blank: true
  validates :weight, numericality: {greater_than_or_equal_to: 1}, allow_blank: true


  has_many :menu

end