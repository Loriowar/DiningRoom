class Menu < ActiveRecord::Base

  attr_accessible :dish_id, :date, :price

  validates :dish_id, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :dish_id, uniqueness: {scope: :date}
  before_create :fill_default

  belongs_to :dish

  def fill_default
    self.date = DateTime.now
  end


end