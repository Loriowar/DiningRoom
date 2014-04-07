class Dish< ActiveRecord::Base

  attr_accessible :name, :calories, :weight, :dish_type_id

  validates :name, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 255}
  validates :calories, numericality: {greater_than_or_equal_to: 1}, allow_blank: true
  validates :weight, numericality: {greater_than_or_equal_to: 1}, allow_blank: true
  validates :dish_type_id, presence: true

  has_many :menu
  has_many :production_plans
  has_many :dish_mixtures
  has_many :cheques
  belongs_to :dish_type

end