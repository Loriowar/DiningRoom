class Foodstuff < ActiveRecord::Base

  attr_accessible :name, :d_created

  validates :name, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 255}

  before_create :fill_default

  has_many :supplies

  def fill_default
    self.d_created = DateTime.now
  end

end