class ProductionPlan < ActiveRecord::Base

  attr_accessible :d_execution, :dish_id, :amount

  validates :dish_id, presence: true
  validates :amount, numericality: {greater_than_or_equal_to: 0}

  before_create :fill_default

  belongs_to :dish

  def fill_default
    self.d_execution = DateTime.now
  end


end