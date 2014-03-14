class Foodstuff < ActiveRecord::Base

  attr_accessible :name, :d_created

  validates :name, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 255}

  before_create :fill_default

  has_many :supplies
  has_many :available_foodstuff
  has_many :dish_mixtures

  def fill_default
    self.d_created = DateTime.now
  end

end